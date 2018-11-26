.class Lcom/miui/gamebooster/a/E;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private eX:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/miui/gamebooster/a/E;->eX:I

    iput-object p1, p0, Lcom/miui/gamebooster/a/E;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ig()V
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/a/E;->eX:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/a/E;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/provider/d;->eC(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/miui/gamebooster/a/E;->eX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/a/E;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/provider/d;->eD(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/a/E;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/a/E;->ig()V

    const/4 v0, 0x0

    return-object v0
.end method
