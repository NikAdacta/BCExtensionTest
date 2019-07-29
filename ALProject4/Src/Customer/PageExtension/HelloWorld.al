// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 "CustomerListExt" extends "Customer List"
{


    actions
    {
        addlast(Reporting)
        {

            action(DemoReport)
            {
                ApplicationArea = All;
                Caption = 'Demo Report';
                Promoted = true;
                PromotedCategory = Report;
                RunObject = report CustomerReport;

            }
        }
        // Add changes to page actions here
    }
}