/** @format */

import { useAxiosGet, useAxiosPost } from "app/frontend/hooks/useAxios";
import { lazy, useCallback, useMemo, useState } from "react";
import { sway } from "sway";
import { handleError, logDev, notify, withTadas } from "../../sway_utils";
import VoteButtons from "./VoteButtons";
import SuspenseFullScreen from "app/frontend/components/dialogs/SuspenseFullScreen";
const VoteConfirmationDialog = lazy(() => import("./VoteConfirmationDialog"));

interface IProps {
    bill: sway.IBill;
    userVote?: sway.IUserVote | null;
}

const VoteButtonsContainer: React.FC<IProps> = ({ bill, userVote: propsUserVote }) => {
    logDev("propsUserVotepropsUserVote", propsUserVote)

    const { isLoading: isLoadingUserVote, get: getUserVote, items: userVote } = useAxiosGet<sway.IUserVote>(`/user_votes/${bill.id}`, {
        skipInitialRequest: !!propsUserVote || !bill.id,
    });

    const [support, setSupport] = useState<sway.TUserSupport | undefined>(propsUserVote?.support);
    const [dialog, setDialog] = useState<boolean>(false);

    const { post, isLoading: isLoadingCreate } = useAxiosPost<sway.IUserVote>("/user_votes");

    const closeDialog = useCallback((newSupport?: sway.TUserSupport) => {
        setSupport(newSupport);
        setDialog(false);
    }, []);

    const createUserVote = useCallback(
        async (verifiedSupport: sway.TUserSupport) => {
            if (!verifiedSupport || !bill.id) return;

            post({ bill_id: bill.id, support: verifiedSupport })
                .then(() => {
                    getUserVote().catch(console.error);
                    closeDialog(verifiedSupport);
                    notify({
                        level: "success",
                        title: `Vote on bill ${bill.externalId} cast!`,
                        message: withTadas("You gained some Sway!"),
                        tada: true,
                    });
                })
                .catch(console.error);
        },
        [bill.externalId, bill.id, closeDialog, getUserVote, post],
    );

    const handleVerifyVote = useCallback(
        (verified: boolean) => {
            if (verified && support) {
                createUserVote(support).catch(handleError);
            } else {
                closeDialog();
                notify({
                    level: "error",
                    title: `Vote on ${bill.externalId} was canceled.`,
                });
            }
        },
        [bill.externalId, closeDialog, createUserVote, support],
    );

    const userSupport = useMemo(
        () => userVote?.support || propsUserVote?.support,
        [propsUserVote?.support, userVote?.support],
    );

    logDev("userSupportuserSupportuserSupportuserSupport", {
        userSupport,
        userVote: userVote?.support,
        propsUserVote: propsUserVote?.support,
        support
    })

    return (
        <>
            <VoteButtons dialog={dialog} setDialog={setDialog} support={userSupport} setSupport={setSupport} />
            {(userSupport || support) && !!bill?.externalId && (
                <SuspenseFullScreen>
                    <VoteConfirmationDialog
                        open={dialog}
                        isSubmitting={isLoadingCreate || isLoadingUserVote}
                        handleClose={handleVerifyVote}
                        support={(userSupport || support) as sway.TUserSupport}
                        bill={bill}
                    />
                </SuspenseFullScreen>
            )}
        </>
    );
};

export default VoteButtonsContainer;
