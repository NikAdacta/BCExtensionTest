report 50001 CustomerReport
{
    //UsageCategory = Administration;
    //DefaultLayout = Word;
    //RDLCLayout = 'Src\Customer\Reports\Layout\CustomerListRDLC.rdl';
    DefaultLayout = Word;

    WordLayout = 'Src\Customer\Reports\Layout\CustomerListWord.docx';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Customer List Report';
    //WordMergeDataItem = Customer; //vsak gre na svojo stran

    dataset
    {
        dataitem(Customer; Customer)
        {

            column(No; "No.") { }
            column(NoCaption; FieldCaption("No.")) { }
            column(Name; Name) { }
            column(NameCaption; FieldCaption("Name")) { }
            column(Address; Address) { }
            column(AddressCaption; FieldCaption("Address")) { }
            column(BalanceLCY; Format("Balance (LCY)")) { }
            column(BalanceLCYCaption; FieldCaption("Balance (LCY)")) { }

            dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
            {
                DataItemLinkReference = Customer;
                DataItemLink = "Customer No." = field ("No.");

                column(Posting_Date; "Posting Date") { }
                column(Description; Description) { }
                column(AmountLCY; "Amount (LCY)") { }
                column(Document_No_; "Document No.") { }
            }

            trigger OnAfterGetRecord()
            begin
                CalcFields("Balance (LCY)");
            end;


        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }
    }
    local procedure FormatAmount(Amount: Decimal): Text;
    begin
        exit('100');
    end;
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
