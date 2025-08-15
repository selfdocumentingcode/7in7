postOffice := Object clone
"postOffice: " print
postOffice println

postOffice packageSender := method(call sender)
postOffice messageTarget := method(call target)
postOffice messageArgs := method(call message arguments)
postOffice messageName := method(call message name)

mailer := Object clone
"mailer: " print
mailer println
mailer deliver := method(postOffice packageSender)

"sender: " print 
mailer deliver println

"target: " print
postOffice messageTarget println

"message args: " print
postOffice messageArgs("one", 2, :three) println

"message name: " print
postOffice messageName println