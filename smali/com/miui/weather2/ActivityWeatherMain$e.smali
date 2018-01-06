.class Lcom/miui/weather2/ActivityWeatherMain$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/ActivityWeatherMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/weather2/ActivityWeatherMain$e;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$e;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain$e;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$e;->b:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/miui/weather2/ActivityWeatherMain;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "weather.png"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityWeatherMain$e;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$e;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$e;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->u(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/ShareWaitCover;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/view/ShareWaitCover;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/miui/weather2/bc;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/weather2/bc;-><init>(Lcom/miui/weather2/ActivityWeatherMain$e;Ljava/lang/Boolean;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain$e;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain$e;->a(Ljava/lang/Boolean;)V

    return-void
.end method
