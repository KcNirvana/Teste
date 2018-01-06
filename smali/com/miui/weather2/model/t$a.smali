.class Lcom/miui/weather2/model/t$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/t;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/weather2/structures/RadarCloudImageData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:D

.field private c:D

.field private d:D

.field private e:Lcom/miui/weather2/view/RadarCloudImageContainer;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/model/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/model/t$a;-><init>()V

    return-void
.end method

.method private a(DD)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/model/t$a;->c:D

    iput-wide p3, p0, Lcom/miui/weather2/model/t$a;->d:D

    return-void
.end method

.method private a(F)V
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/miui/weather2/model/t$a;->b:D

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/t$a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/t$a;DD)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/weather2/model/t$a;->a(DD)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/t$a;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/model/t$a;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/t$a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/model/t$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/t$a;Lcom/miui/weather2/view/RadarCloudImageContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/model/t$a;->a(Lcom/miui/weather2/view/RadarCloudImageContainer;)V

    return-void
.end method

.method private a(Lcom/miui/weather2/view/RadarCloudImageContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/t$a;->e:Lcom/miui/weather2/view/RadarCloudImageContainer;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/RadarCloudImageData;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/weather2/model/t$a;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/miui/weather2/model/t$a;->c:D

    iget-wide v4, p0, Lcom/miui/weather2/model/t$a;->d:D

    iget-wide v6, p0, Lcom/miui/weather2/model/t$a;->b:D

    invoke-static/range {v1 .. v7}, Lcom/miui/weather2/f/a;->a(Landroid/content/Context;DDD)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/t$a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/weather2/e/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/RadarCloudImageData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/model/t$a;->e:Lcom/miui/weather2/view/RadarCloudImageContainer;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/RadarCloudImageContainer;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/t$a;->a([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/t$a;->a(Ljava/util/ArrayList;)V

    return-void
.end method
