.class Lcom/miui/weather2/model/o$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/miui/weather2/structures/AdvertismentData;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/weather2/view/WeatherScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/miui/weather2/structures/WeatherData;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/weather2/model/o$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/model/o$a;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/miui/weather2/model/o$a;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/model/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/model/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/model/o$a;->b:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/o$a;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/miui/weather2/model/o$b;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/model/o$a;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/o$a;->f:Lcom/miui/weather2/structures/WeatherData;

    return-void
.end method

.method public a(Lcom/miui/weather2/view/WeatherScrollView;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/model/o$a;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/o$a;->d:Ljava/lang/String;

    return-void
.end method

.method protected a([Lcom/miui/weather2/structures/AdvertismentData;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/model/o$a;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/o$a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/o$a;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/o$a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/o$b;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    const/4 v1, 0x1

    aget-object v3, p1, v1

    const/4 v1, 0x2

    aget-object v4, p1, v1

    iget-object v1, p0, Lcom/miui/weather2/model/o$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/WeatherScrollView;

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/miui/weather2/model/o$b;->a(Lcom/miui/weather2/structures/AdvertismentData;Lcom/miui/weather2/structures/AdvertismentData;Lcom/miui/weather2/structures/AdvertismentData;Lcom/miui/weather2/view/WeatherScrollView;)V

    :cond_0
    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)[Lcom/miui/weather2/structures/AdvertismentData;
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/model/o$a;->a:Landroid/content/Context;

    iget v1, p0, Lcom/miui/weather2/model/o$a;->b:I

    iget v2, p0, Lcom/miui/weather2/model/o$a;->c:I

    iget-object v3, p0, Lcom/miui/weather2/model/o$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/weather2/model/o$a;->f:Lcom/miui/weather2/structures/WeatherData;

    invoke-static {v4}, Lcom/miui/weather2/model/o;->a(Lcom/miui/weather2/structures/WeatherData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/f/a;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/o$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/weather2/e/b;->a(Ljava/lang/String;Landroid/content/Context;)[Lcom/miui/weather2/structures/AdvertismentData;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/model/o$a;->c:I

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/o$a;->a([Ljava/lang/Void;)[Lcom/miui/weather2/structures/AdvertismentData;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/o$a;->a([Lcom/miui/weather2/structures/AdvertismentData;)V

    return-void
.end method
