report 50001 CustomerReport
{
    //UsageCategory = Administration;
    //DefaultLayout = Word;
    RDLCLayout = 'Src\Customer\Reports\Layout\CustomerListRDLC.rdl';
    WordLayout = 'Src\Customer\Reports\Layout\CustomerListWord.docx';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Customer List Report';

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