report 50001 CustomerReport
{
    //UsageCategory = Administration;
    //DefaultLayout = Word;
    RDLCLayout = 'Layout\CustomerListRDLC.rdl';
    WordLayout = 'Layout\CustomerListWord.docx';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Customer Category List';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(No; "No.") { }
            column(Name; Name) { }
            column(Address; Address) { }
            column(City; City) { }
        }
    }
    /*
        requestpage
        {
            layout
            {
                area(Content)
                {
                    group(GroupName)
                    {
                        field(Name; SourceExpression)
                        {
                            ApplicationArea = All;

                        }
                    }
                }
            }

            actions
            {
                area(processing)
                {
                    action(ActionName)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        var
            myInt: Integer;*/
}