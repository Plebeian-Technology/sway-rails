import { sway } from "sway";

export interface IChartChoiceComponentProps {
    scores: sway.scoring.IUserLegislatorScore | sway.IAggregatedBillLocaleScores;
    isEmptyScore: boolean;
    title: string;
    colors: {
        primary: string;
        secondary: string;
    };
}

export type TChartChoiceComponent = React.FC<IChartChoiceComponentProps>;

export interface IChartChoice {
    title: string;
    score: sway.scoring.IUserLegislatorScore;
    Component: TChartChoiceComponent;
    colors: {
        primary: string;
        secondary: string;
    };
}

export interface IMobileChartChoice extends IChartChoice {
    label: string;
    Icon: React.FC<any>;
}

export interface IChartContainerProps {
    legislator: sway.ILegislator;
    userLegislatorScore: sway.scoring.IUserLegislatorScore | null | undefined;
    isLoading: boolean;
}
