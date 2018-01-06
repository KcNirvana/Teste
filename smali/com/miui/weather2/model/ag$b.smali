.class Lcom/miui/weather2/model/ag$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/weather2/structures/InfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/model/ag;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/weather2/model/ag$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/weather2/model/ag;Ljava/lang/String;Ljava/lang/String;ZLcom/miui/weather2/model/ag$a;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/weather2/model/ag$b;->a:Lcom/miui/weather2/model/ag;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/weather2/model/ag$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/weather2/model/ag$b;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/miui/weather2/model/ag$b;->d:Z

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/model/ag$b;->e:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/miui/weather2/structures/InfoBean;
    .locals 3

    new-instance v0, Lcom/a/a/k;

    invoke-direct {v0}, Lcom/a/a/k;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/ag$b;->a:Lcom/miui/weather2/model/ag;

    invoke-static {v1}, Lcom/miui/weather2/model/ag;->a(Lcom/miui/weather2/model/ag;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/model/ag$b;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/weather2/structures/InfoBean;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/k;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/InfoBean;

    return-object v0
.end method

.method protected a(Lcom/miui/weather2/structures/InfoBean;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/model/ag$b;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/ag$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/ag$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/model/ag$b;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/weather2/model/ag$b;->d:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/miui/weather2/model/ag$a;->a(Lcom/miui/weather2/structures/InfoBean;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/ag$b;->a([Ljava/lang/Void;)Lcom/miui/weather2/structures/InfoBean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/weather2/structures/InfoBean;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/ag$b;->a(Lcom/miui/weather2/structures/InfoBean;)V

    return-void
.end method
