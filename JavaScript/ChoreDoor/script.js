let doorImage1 = document.getElementById("door1");
let doorImage2 = document.getElementById("door2");
let doorImage3 = document.getElementById("door3");
numClosedDoors = 3;
let openDoor1;
let openDoor2;
let openDoor3;
const botDoorPath = "https://s3.amazonaws.com/codecademy-content/projects/chore-door/images/robot.svg";

const beachDoorPath = "https://content.codecademy.com/projects/chore-door/images/beach.svg";

const spaceDoorPath = "https://content.codecademy.com/projects/chore-door/images/space.svg";
const closedDoorPath = "https://content.codecademy.com/projects/chore-door/images/closed_door.svg";

const isClicked = door => {
    if (door.src === closedDoorPath) {
        return false;
    } else {
        return true;
    }
}

const playDoor = (door) => {
    numClosedDoors--;
    if (numClosedDoors === 0) {
        gameOver('win');
    }
    else if (isBot(door) === true) {
        return gameOver();
    }
}


door1.onclick = () => {
  doorImage1.src=botDoorPath;
}

door2.onclick = () => {
  doorImage2.src=beachDoorPath;
}

door3.onclick = () => {
  doorImage3.src=spaceDoorPath;
}


const randomChoreGenerator = () => {
    let choreDoor = Math.floor(Math.random() * numClosedDoors);
    if (choreDoor === 0) {
        openDoor1 = botDoorPath;
        openDoor2 = beachDoorPath;
        openDoor3 = spaceDoorPath;
    } else if (choreDoor === 1) {
        openDoor2 = botDoorPath;
        openDoor1 = beachDoorPath;
        openDoor3 = spaceDoorPath;
    } else {
        openDoor3 = botDoorPath;
        openDoor2 = spaceDoorPath;
        openDoor1 = beachDoorPath;
    }
}

doorImage1.onclick = () => {
    if (!isClicked(doorImage1) && currentPlaying) {
        doorImage1.src = openDoor1;
        playDoor(doorImage1);
    }
};
doorImage2.onclick = () => {
    if (!isClicked(doorImage2) && currentPlaying) {

        doorImage2.src = openDoor2;
        playDoor(doorImage2);

    }
}
doorImage3.onclick = () => {
    if (!isClicked(doorImage3) && currentPlaying) {
        doorImage3.src = openDoor3;
        playDoor(doorImage3);
    }
}

