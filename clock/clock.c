#include <stdio.h>
#include <time.h>
#include <GL/gl.h>
#include <GL/glut.h>
#include <math.h>

typedef struct 
{
    int X;
    int Y;
} WindowSize;

static const double R = 0.9;
static const WindowSize WINDOWSIZE = {300, 300};

unsigned short int hour;
unsigned short int min;
unsigned short int sec;

char date[64];

void display(void)
{
    glClearColor(0, 0, 0, 1);
    glClear(GL_COLOR_BUFFER_BIT);

    double theta;
    double r;

    time_t t =  time(NULL);
    strftime(date, sizeof(date), "%Y/%m/%d %a %H:%M:%S", localtime(&t));
    hour = (t / 3600 + 9) % 24;
    min = t / 60 % 60;
    sec = t % 60;

    glLineWidth(1.0);
    glColor3f(1, 0.25, 0.25);
    glBegin(GL_LINES);

    for(int i = 0; i < 60; i++)
    {
//        printf("i = %3d ", i);
        if(i % 5 == 0)
        {
            r = 0.7;
        }
        else
        {
            r = 0.8;
        }
        theta = i * 2 * M_PI / 60; 
//        printf("R = %5.3lf r = %5.3lf theta = %5.3lf", R, r, theta);
//        printf("\n");
        glVertex2d(R * cos(theta), R * sin(theta));
        glVertex2d(r * cos(theta), r * sin(theta));
    }
    glEnd();

    // 秒針
    glColor3f(1, 0.25, 0.25);
    glBegin(GL_LINES);
    theta = -1 * sec * 2 * M_PI / 60 + M_PI / 2;
    r = r + (R - r) / 2;
    glVertex2d(r * cos(theta), r * sin(theta));
    glVertex2d(0, 0);
    glEnd();

    // 分針
    glLineWidth(3.0);
    glColor3f(1, 0.25, 0.25);
    glBegin(GL_LINES);
    theta = -1 * min * 2 * M_PI / 60 + M_PI / 2 + ((theta - M_PI / 2) / 60);    // 初めの二項で分針がカクカク動く。最後の()でくくられた一項があることで、分針が秒針に依存して滑らかに動く。
    glVertex2d(r * cos(theta), r * sin(theta));
    glVertex2d(0, 0);
    glEnd();

    // 時針
    glLineWidth(5.0);
    glColor3f(1, 0.25, 0.25);
    glBegin(GL_LINES);
    theta = -1 * hour * 2 * M_PI / 12 + M_PI / 2 + ((theta - M_PI / 2) / 60);   // こちらも最後の項が時針を滑らかに動くようにしている。
    r = r * 0.75;
    glVertex2d(r * cos(theta), r * sin(theta));
    glVertex2d(0, 0);
    glEnd();

    glFlush();
}

void timer(int hogehoge)
{
    glutPostRedisplay();
    glutTimerFunc(1, timer, 0);
}

void reshape()
{
    glutReshapeWindow(WINDOWSIZE.X, WINDOWSIZE.Y);
}

int main(int argc, char *argv[])
{
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_RGBA);
    glutInitWindowSize(WINDOWSIZE.X, WINDOWSIZE.Y);
    glutCreateWindow("Clock");

    glutReshapeFunc(reshape);
    glutDisplayFunc(display);
    glutTimerFunc(1, timer, 0);
    glutMainLoop();

    return 0;
}

/// REFERENCE
//
// http://wisdom.sakura.ne.jp/system/opengl/gl6.html    // 線の太さ
// https://www.mm2d.net/main/prog/c/time-01.html    // 時間の取得
//

