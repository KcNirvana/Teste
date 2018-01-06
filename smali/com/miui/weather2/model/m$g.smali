.class Lcom/miui/weather2/model/m$g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/model/m;

.field private b:Lcom/miui/weather2/structures/CityData;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/weather2/model/m$j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/weather2/model/m;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/miui/weather2/model/m$g;->a:Lcom/miui/weather2/model/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/model/m$g;->b:Lcom/miui/weather2/structures/CityData;

    iput-object v0, p0, Lcom/miui/weather2/model/m$g;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/model/m$g;-><init>(Lcom/miui/weather2/model/m;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/model/m$g;->a:Lcom/miui/weather2/model/m;

    invoke-static {v0}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/m$g;->b:Lcom/miui/weather2/structures/CityData;

    invoke-static {v0, v1}, Lcom/miui/weather2/model/ag;->a(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;)Z

    iget-object v0, p0, Lcom/miui/weather2/model/m$g;->a:Lcom/miui/weather2/model/m;

    invoke-static {v0}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/m$g;->b:Lcom/miui/weather2/structures/CityData;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/t;->a(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/miui/weather2/model/m$j;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/model/m$g;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/miui/weather2/structures/CityData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/m$g;->b:Lcom/miui/weather2/structures/CityData;

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/m$g;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/m$g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/m$g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/m$j;

    invoke-interface {v0}, Lcom/miui/weather2/model/m$j;->a()V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/m$g;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/m$g;->a(Ljava/lang/Void;)V

    return-void
.end method
