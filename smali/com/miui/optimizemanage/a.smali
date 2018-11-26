.class public Lcom/miui/optimizemanage/a;
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

    sput-object v0, Lcom/miui/optimizemanage/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AD(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/miui/optimizemanage/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applicationInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static AE(Lcom/miui/b/a;IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static AF(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;)Lcom/miui/b/a;
    .locals 1

    new-instance v0, Lcom/miui/b/a;

    invoke-direct {v0}, Lcom/miui/b/a;-><init>()V

    return-object v0
.end method

.method public static AG(Ljava/lang/String;Lorg/json/JSONObject;I)Lcom/miui/optimizemanage/optimizeresult/o;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static AH(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static AI(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static varargs AJ([Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/miui/optimizemanage/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "loadNativeAdItem chinese build"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static AK(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static varargs AL([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static AM(Landroid/content/Context;Landroid/widget/RelativeLayout;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method
