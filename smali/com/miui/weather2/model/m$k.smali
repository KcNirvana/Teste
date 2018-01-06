.class Lcom/miui/weather2/model/m$k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
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


# direct methods
.method private constructor <init>(Lcom/miui/weather2/model/m;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/m$k;->a:Lcom/miui/weather2/model/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/model/m$k;-><init>(Lcom/miui/weather2/model/m;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/m$k;->a:Lcom/miui/weather2/model/m;

    invoke-static {v0}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/t;->c(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/m$k;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
