set -e
sit_back="Sit back and wait while we tune your Ubuntu"

options='
\n
What do you plan to use your Ubuntu for?\n
What are you?:\n
1. System Administrator\n
2. Researcher/Academia\n
3. Software Developer\n
4. Multimedia Creator\n
5. Graphic Designer\n
6. Data Scientist\n
7. Web Developer\n
8. Office User\n
9. Casual User\n
0. Gamer\n

'

echo -e $options
read -p "Enter choice (1~9,0):" choice


case $choice in
    1) 
        echo "You chosed System Administrator setup"
        echo $sit_back
        ;;
    2) 
        echo "You chosed Researcher/Academia setup"
        echo $sit_back
        ;;
    3) 
        echo "You chosed Software Developer setup"
        echo $sit_back
        ;;
    4) 
        echo "You chosed Multimedia Creator setup"
        echo $sit_back
        ;;
    5) 
        echo "You chosed Graphic Designer setup"
        echo $sit_back
        ;;
    6) 
        echo "You chosed Data Scientist setup"
        echo $sit_back
        ;;
    7) 
        echo "You chosed Web Developer setup"
        echo $sit_back
        ;;
    8) 
        echo "You chosed Office User setup"
        echo $sit_back
        ;;
    9) 
        echo "You chosed Casual User setup"
        echo $sit_back
        ;;
    0) 
        echo "You chosed Gamer setup"
        echo $sit_back
        ;;
    *)  
        echo -e "Invalid choice. Try again\n"
        goto 52;
        
esac
