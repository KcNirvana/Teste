.class Lcom/miui/weather2/model/ag$j;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/weather2/structures/WeatherData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/model/ag;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Lcom/miui/weather2/model/ag$d;


# direct methods
.method private constructor <init>(Lcom/miui/weather2/model/ag;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/miui/weather2/model/ag$j;->a:Lcom/miui/weather2/model/ag;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/model/ag$j;->b:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/miui/weather2/model/ag$j;->c:Z

    iput-boolean v1, p0, Lcom/miui/weather2/model/ag$j;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/model/ag;Lcom/miui/weather2/model/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/model/ag$j;-><init>(Lcom/miui/weather2/model/ag;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/WeatherData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/model/ag$j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/weather2/model/ag$j;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/model/ag$j;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/model/ag$j;->a:Lcom/miui/weather2/model/ag;

    invoke-static {v1}, Lcom/miui/weather2/model/ag;->a(Lcom/miui/weather2/model/ag;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/model/ag;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/WeatherData;

    move-result-object v1

    iget-boolean v0, p0, Lcom/miui/weather2/model/ag$j;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/ag$j;->a:Lcom/miui/weather2/model/ag;

    invoke-static {v0}, Lcom/miui/weather2/model/ag;->a(Lcom/miui/weather2/model/ag;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bu;->a(Landroid/content/Context;Lcom/miui/weather2/structures/WeatherData;Z)Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/model/ag$j;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/weather2/model/ag$j;->a:Lcom/miui/weather2/model/ag;

    invoke-static {v1}, Lcom/miui/weather2/model/ag;->a(Lcom/miui/weather2/model/ag;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bu;->a(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/miui/weather2/model/ag$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/ag$j;->e:Lcom/miui/weather2/model/ag$d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ag$j;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/model/ag$j;->b:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/ag$j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/WeatherData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/model/ag$j;->e:Lcom/miui/weather2/model/ag$d;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/weather2/model/ag$j;->c:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/model/ag$j;->e:Lcom/miui/weather2/model/ag$d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/WeatherData;

    invoke-interface {v1, v0}, Lcom/miui/weather2/model/ag$d;->a(Lcom/miui/weather2/structures/WeatherData;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/model/ag$j;->e:Lcom/miui/weather2/model/ag$d;

    invoke-interface {v0, p1}, Lcom/miui/weather2/model/ag$d;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/model/ag$j;->c:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/model/ag$j;->d:Z

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/ag$j;->a([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/ag$j;->a(Ljava/util/ArrayList;)V

    return-void
.end method
