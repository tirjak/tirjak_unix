 #!/usr/bin/perl
 $to = 'Nishant.Das@amdocs.com';
 $from = 'ANSHOOG@amdocs.com';
 $subject = 'Good work';
 $message = ' Congratulation for your new bike. Please submit your bike documents to our HR department. You will be awarded 60% amount of the bike in this month of salary';
  
  open(MAIL, "|/usr/sbin/sendmail -t");
   
   # Email Header
   print MAIL "To: $to\n";
   print MAIL "From: $from\n";
   print MAIL "Subject: $subject\n\n";
   # Email Body
   print MAIL $message;

  close(MAIL);
   print "Email Sent Successfully\n";
