.class Lcom/miui/weather2/model/m$m;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
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

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/miui/weather2/model/m;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/weather2/model/m$m;->a:Lcom/miui/weather2/model/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/model/m$m;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/weather2/model/m$m;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/model/m$m;-><init>(Lcom/miui/weather2/model/m;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/model/m$m;->a:Lcom/miui/weather2/model/m;

    invoke-static {v0}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/m$m;->b:Ljava/lang/String;

    iget v2, p0, Lcom/miui/weather2/model/m$m;->c:I

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/t;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/model/m$m;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/m$m;->b:Ljava/lang/String;

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/m$m;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
