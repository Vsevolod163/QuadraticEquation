//
//  main.m
//  QuadraticEquation
//
//  Created by Vsevolod Lashin on 01.11.2023.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double a, b, c;
        printf("Введите коэффициент a: ");
        scanf("%lf", &a);
        printf("Введите коэффициент b: ");
        scanf("%lf", &b);
        printf("Введите коэффициент c: ");
        scanf("%lf", &c);

        double discriminant = b * b - 4 * a * c;

        if (discriminant > 0) {
            double root1 = (-b + sqrt(discriminant)) / (2 * a);
            double root2 = (-b - sqrt(discriminant)) / (2 * a);
            printf("Уравнение имеет два корня:\n");
            printf("Корень 1: %lf\n", root1);
            printf("Корень 2: %lf\n", root2);
        } else if (discriminant == 0) {
            double root = -b / (2 * a);
            printf("Уравнение имеет один корень:\n");
            printf("Корень: %lf\n", root);
        } else {
            printf("Уравнение не имеет действительных корней.\n");
        }
    }
    return 0;
}
