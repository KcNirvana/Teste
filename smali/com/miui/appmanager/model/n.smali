.class public Lcom/miui/appmanager/model/n;
.super Lcom/miui/appmanager/model/k;
.source ""


# instance fields
.field private aQq:Landroid/view/View$OnClickListener;

.field private icon:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f03019f

    invoke-direct {p0, v0}, Lcom/miui/appmanager/model/k;-><init>(I)V

    return-void
.end method

.method static synthetic bhF(Lcom/miui/appmanager/model/n;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/n;->aQq:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public bhE(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/n;->aQq:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/appmanager/model/f;
    .locals 1

    new-instance v0, Lcom/miui/appmanager/model/o;

    invoke-direct {v0, p1}, Lcom/miui/appmanager/model/o;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/model/n;->icon:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/n;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/miui/appmanager/model/n;->icon:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/n;->title:Ljava/lang/String;

    return-void
.end method
