program Timer01;

uses sysUtils;

var
   numOfMinutes: integer;
   timerResult: string;
   flag: boolean;

procedure minuteTimer(numOfMinutes: integer; var returnValue: string);

var
   i: integer;

begin
   writeLn(numOfMinutes, ' minutes remaining.');

   for i := 1 to numOfMinutes do
      begin
         sleep(60000);
         writeLn(numOfMinutes - i, ' minutes remaining.');
      end;

   returnValue := 'Timer is finished.';
end;

begin
   flag := false;

   writeLn('Enter the number of minutes to time: ');

   repeat
      {$I-}
      readLn(numOfMinutes);
      {$I+}

      if (ioresult = 0) then
         begin
            flag := true;
            
            minuteTimer(numOfMinutes, timerResult);
            writeLn(timerResult);
         end
      else
         writeLn('Invalid input.');
   until (flag = true);
end.
