printf "\n====== CREDIT CARD NUMBER REPORT ======\n"
grep -rE --color=always '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "========= CREDIT CARD SCAN COMPLETE =========="

printf "\n==== SOCIAL SECURITY NUMBER REPORT ====\n"
grep -rE --color=always '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "======= SOCIAL SECURITY SCAN COMPLETE ========"

printf "\n========= PHONE NUMBER REPORT =========\n"
grep -rE --color=always '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
grep -rE --color=always '\([0-9]{3}\) [0-9]{3}-[0-9]{4}' . --exclude-dir={.git} --line-number
echo "========= PHONE NUMBER SCAN COMPLETE ========="
