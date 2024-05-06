/** @format */

import { ROUTES } from "app/frontend/sway_constants";
import { createElement, Fragment, useMemo } from "react";
import { FiBookmark, FiClock, FiLogOut, FiSearch, FiTool, FiUsers } from "react-icons/fi";
import { useAdmin } from "../../hooks/users/useUserAdmin";
import { SWAY_COLORS } from "../../sway_utils";
import SwayDrawer from "./SwayDrawer";
import { useUser } from "app/frontend/hooks/users/useUser";

type MenuItem = {
    route: string;
    Icon: React.FC<any>;
    text: string | React.ReactNode;
};
const MenuChoices: MenuItem[] = [
    { route: ROUTES.legislators, Icon: FiUsers, text: "Representatives" },
    { route: ROUTES.billOfTheWeek, Icon: FiBookmark, text: "Bill of the Week" },
    {
        route: ROUTES.pastBills,
        Icon: FiClock,
        text: "Past Bills of the Week",
    },
    // {
    //     route: ROUTES.influence,
    //     Icon: FiStar,
    //     text: "Your Sway",
    // },
];
const BOTTOM_MENU_CHOICES: MenuItem[] = [
    // { route: ROUTES.userSettings, Icon: Settings, text: "Settings" },
    // {
    //     route: "invite", // @ts-ignore
    //     Icon: (user: sway.IUser) => createElement(InviteIconDialog, { user, withText: true }),
    //     text: "",
    // },
    { route: ROUTES.logout, Icon: FiLogOut, text: "Sign Out" },
];

const AdminChoices: MenuItem[] = [
    {
        route: ROUTES.billOfTheWeekCreator,
        Icon: FiTool,
        text: "Creator",
    },
];

interface IProps {
    children: React.ReactNode;
}

const AppDrawer: React.FC<IProps> = (props) => {
    const isAdmin = useAdmin();
    const user = useUser();

    const withFindRepresentativesPrepended = useMemo(() => {
        if (user?.isRegistrationComplete) return MenuChoices;

        return [
            {
                route: ROUTES.registration,
                Icon: () =>
                    createElement(FiSearch, {
                        className: "pulse-text",
                        style: { color: SWAY_COLORS.tertiaryLight },
                    }),
                text: <span className="pulse-text">Find Representatives</span>,
            },
            {
                route: "divider",
                Icon: () => createElement(Fragment),
                text: "",
            },
            ...MenuChoices,
        ];
    }, [user?.isRegistrationComplete]);

    const bottomMenuChoices: MenuItem[] = useMemo(
        () => (isAdmin ? BOTTOM_MENU_CHOICES.concat(AdminChoices) : BOTTOM_MENU_CHOICES),
        [isAdmin],
    );

    return (
        <SwayDrawer
            menuChoices={withFindRepresentativesPrepended}
            bottomMenuChoices={bottomMenuChoices}
        >
            {props.children}
        </SwayDrawer>
    );
};

export default AppDrawer;