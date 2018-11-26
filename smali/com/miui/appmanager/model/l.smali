.class public Lcom/miui/appmanager/model/l;
.super Lcom/miui/appmanager/model/k;
.source ""


# instance fields
.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f03002d

    invoke-direct {p0, v0}, Lcom/miui/appmanager/model/k;-><init>(I)V

    return-void
.end method

.method static synthetic bhD(Lcom/miui/appmanager/model/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/l;->title:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createViewHolder(Landroid/view/View;)Lcom/miui/appmanager/model/f;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/model/l;->createViewHolder(Landroid/view/View;)Lcom/miui/appmanager/model/m;

    move-result-object v0

    return-object v0
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/appmanager/model/m;
    .locals 1

    new-instance v0, Lcom/miui/appmanager/model/m;

    invoke-direct {v0, p1}, Lcom/miui/appmanager/model/m;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/l;->title:Ljava/lang/String;

    return-void
.end method
