
import { isCongressLocale } from "app/frontend/sway_utils";
import { sway } from "sway";

export const BILL_INPUTS: sway.IFormField[][] = [
    [
        {
            name: "externalId",
            component: "text",
            type: "text",
            label: "Bill External Id",
            isRequired: true,
            helperText: "The ID of the bill from the official source (ex. congress.gov).",
        },
        {
            name: "externalVersion",
            component: "text",
            type: "number",
            label: "Bill External Version Number ",
            isRequired: false,
            default: "",
            helperText:
                "The numeric version (if any) of the bill (ex. Baltimore Legistar has v0, v1, etc. for bills so enter 0 or 1)",
        },
    ],
    [
        {
            name: "title",
            component: "text",
            type: "text",
            label: "Bill Title",
            isRequired: true,
            helperText: "A short title for the bill.",
        },
        {
            name: "link",
            component: "text",
            type: "text",
            label: "Bill Link",
            isRequired: true,
            helperText: "A link to the bill itself.",
        },
    ],
    [
        {
            name: "legislator",
            component: "select",
            type: "text",
            label: "Legislator Sponsor",
            isRequired: true,
            helperText: "The legislator that introduced the bill.",
        },
        {
            name: "chamber",
            component: "select",
            type: "text",
            label: "Chamber",
            isRequired: true,
            default: "council",
            helperText: "The chamber that introduced the legislation.",
            possibleValues: [
                { label: "council", value: "council" },
                { label: "house", value: "house" },
                { label: "senate", value: "senate" },
            ],
            disableOn: (locale: sway.ISwayLocale) => !isCongressLocale(locale),
        },
    ],
    [
        {
            name: "status",
            component: "select",
            type: "text",
            label: "Bill status",
            isRequired: false,
            helperText:
                "The most current status of the bill. If the bill has passed the House but is in committee in the Senate, the status should be 'committee'.",
            possibleValues: [
                { label: "passed", value: "passed" },
                { label: "failed", value: "failed" },
                { label: "committee", value: "committee" },
                { label: "vetoed", value: "vetoed" },
            ],
        },
        {
            name: "category",
            component: "select",
            type: "text",
            label: "Category",
            isRequired: false,
            helperText: "A single category this bill belongs to.",
            possibleValues: [
                { label: "police", value: "police" },
                { label: "health", value: "health" },
                { label: "housing", value: "housing" },
                { label: "infrastructure", value: "infrastructure" },
                { label: "political reform", value: "political reform" },
                { label: "civil rights", value: "civil rights" },
                { label: "education", value: "education" },
                { label: "economy", value: "economy" },
                { label: "transportation", value: "transportation" },
            ],
        },
    ],
    [
        {
            name: "introducedDateTimeUtc",
            component: "date",
            type: "date",
            label: "Introduced On",
            isRequired: true,
            helperText: "The date this bill was first introduced.",
        },
        {
            name: "houseVoteDateTimeUtc",
            component: "date",
            type: "date",
            label: "House Vote Date",
            isRequired: false,
            helperText: "The most recent date this legislation was voted on by the House.",
        },
        {
            name: "senateVoteDateTimeUtc",
            component: "date",
            type: "date",
            label: "Senate Vote Date",
            isRequired: false,
            helperText: "The most recent date this legislation was voted on by the Senate.",
            disableOn: (locale: sway.ISwayLocale) => !isCongressLocale(locale),
        },
    ],
    [
        {
            name: "summary",
            label: "Sway Bill Summary",
            component: "textarea",
            type: "text",
            isRequired: true,
            helperText: "Sway's short summary of the bill's contents.",
        },
        {
            name: "summaryPreview",
            label: "Sway Bill Summary Preview",
            component: "textarea",
            type: "text",
            isRequired: true,
            helperText: "A preview of how the summary will be displayed to users.",
        },
    ],
    // [
    //     {
    //         name: "relatedBillIds",
    //         component: "text",
    //         type: "text",
    //         label: "Related Bill IDs",
    //         isRequired: false,
    //         helperText: "Official IDs of related bills.",
    //     },
    // ],
    [
        {
            name: "separator-1",
            component: "separator",
            type: "text",
            label: "separator-1",
            isRequired: false,
            createable: true,
        }
    ],
    [
        {
            name: "organizationsSupport",
            component: "select",
            type: "text",
            label: "Supporting Organizations",
            isRequired: false,
            createable: true,
        },
        {
            name: "organizationsOppose",
            component: "select",
            type: "text",
            label: "Oppposing Organizations",
            isRequired: false,
            createable: true,
        },
    ],
    [
        {
            name: "separator-2",
            component: "separator",
            type: "text",
            label: "separator-2",
            isRequired: false,
            createable: true,
        }
    ],
    [
        {
            name: "supporters",
            component: "select",
            type: "text",
            label: "Supporters",
            isRequired: false,
            multi: true,
        },
        {
            name: "opposers",
            component: "select",
            type: "text",
            label: "Opposers",
            isRequired: false,
            multi: true,
        },
        {
            name: "abstainers",
            component: "select",
            type: "text",
            label: "Abstainers",
            isRequired: false,
            multi: true,
        },
    ],
];
