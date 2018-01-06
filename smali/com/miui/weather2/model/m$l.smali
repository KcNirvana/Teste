.class Lcom/miui/weather2/model/m$l;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/model/m;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/weather2/model/m$f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method private constructor <init>(Lcom/miui/weather2/model/m;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/weather2/model/m$l;->a:Lcom/miui/weather2/model/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/model/m$l;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/model/m$l;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/model/m$l;-><init>(Lcom/miui/weather2/model/m;)V

    return-void
.end method

.method private a(Lcom/miui/weather2/model/m$f;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/model/m$l;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/m$l;Lcom/miui/weather2/model/m$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/model/m$l;->a(Lcom/miui/weather2/model/m$f;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/model/m$l;->a:Lcom/miui/weather2/model/m;

    invoke-static {v0}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/t;->d(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/model/m$l;->e:I

    iget-object v0, p0, Lcom/miui/weather2/model/m$l;->a:Lcom/miui/weather2/model/m;

    invoke-static {v0}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/m$l;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/weather2/model/m$l;->a:Lcom/miui/weather2/model/m;

    invoke-static {v2}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/weather2/f/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/weather2/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/model/m$l;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/m$l;->d:Ljava/lang/String;

    return-void
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/model/m$l;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/m$l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/m$l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/m$f;

    iget v1, p0, Lcom/miui/weather2/model/m$l;->e:I

    iget-object v2, p0, Lcom/miui/weather2/model/m$l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/miui/weather2/model/m$f;->a(Ljava/util/ArrayList;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/m$l;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/m$l;->a(Ljava/util/ArrayList;)V

    return-void
.end method
