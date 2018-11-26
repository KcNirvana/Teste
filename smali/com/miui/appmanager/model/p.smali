.class public Lcom/miui/appmanager/model/p;
.super Lcom/miui/appmanager/model/k;
.source ""


# static fields
.field private static final aQu:Landroid/net/Uri;


# instance fields
.field private aQv:Z

.field private aQw:I


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/miui/appmanager/model/p;->aQu:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "mimarket://update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/appmanager/model/p;->aQu:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f03002e

    invoke-direct {p0, v0}, Lcom/miui/appmanager/model/k;-><init>(I)V

    return-void
.end method

.method static synthetic bhQ(Lcom/miui/appmanager/model/p;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/p;->aQv:Z

    return v0
.end method

.method static synthetic bhR(Lcom/miui/appmanager/model/p;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/model/p;->aQw:I

    return v0
.end method


# virtual methods
.method public bhM()I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/model/p;->aQw:I

    return v0
.end method

.method public bhN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/p;->aQv:Z

    return v0
.end method

.method public bhO(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/model/p;->aQv:Z

    return-void
.end method

.method public bhP(I)V
    .locals 0

    iput p1, p0, Lcom/miui/appmanager/model/p;->aQw:I

    return-void
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/appmanager/model/f;
    .locals 1

    new-instance v0, Lcom/miui/appmanager/model/q;

    invoke-direct {v0, p1}, Lcom/miui/appmanager/model/q;-><init>(Landroid/view/View;)V

    return-object v0
.end method
