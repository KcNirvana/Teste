.class public Lcom/miui/appmanager/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/appmanager/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/appmanager/j;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bml(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static bmm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static bmn(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/miui/appmanager/j;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applicationInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bmo(Lcom/miui/appmanager/m;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static bmp(Landroid/view/View;Lcom/miui/appmanager/model/k;)Lcom/miui/appmanager/m;
    .locals 1

    new-instance v0, Lcom/miui/appmanager/m;

    invoke-direct {v0}, Lcom/miui/appmanager/m;-><init>()V

    return-object v0
.end method

.method public static bmq(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public static bmr(I)Lcom/miui/appmanager/model/s;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static bms()V
    .locals 2

    sget-object v0, Lcom/miui/appmanager/j;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "loadNativeAdItem chinese build"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bmt()V
    .locals 0

    return-void
.end method

.method public static bmu()V
    .locals 0

    return-void
.end method

.method public static bmv(Landroid/content/Context;Landroid/widget/RelativeLayout;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method
