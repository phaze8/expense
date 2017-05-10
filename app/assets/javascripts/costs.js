
 function ValidateForm(){
     var form = document.forms['costForm']['cost'];
     if (!(form['submitter'].value) && !(form['amount'].value) || !(form['level1_id'].value) || !(form['level2_id'].value) || !(form['level3_id'].value) || !(form['expense_date']).value){
         alert("Please make sure you listed a date, amount and coded the expense");
         return(false);
     } else {
     	if(form['amount'].search(',') != -1 || form['amount'].search('$') != -1){
     		alert("Please remove any non-numeric digits from amount");
     		return(false);
     	}
        return(true);
     }
 }