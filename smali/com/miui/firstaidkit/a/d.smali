.class public Lcom/miui/firstaidkit/a/d;
.super Lcom/miui/common/card/models/BaseCardModel;
.source ""


# instance fields
.field private tn:Ljava/util/List;

.field private to:Lcom/miui/firstaidkit/FirstAidKitActivity;

.field private tp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f03008f

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    return-void
.end method

.method static synthetic vl(Lcom/miui/firstaidkit/a/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/a/d;->tn:Ljava/util/List;

    return-object v0
.end method

.method static synthetic vm(Lcom/miui/firstaidkit/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/a/d;->tp:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 2

    new-instance v0, Lcom/miui/firstaidkit/a/f;

    iget-object v1, p0, Lcom/miui/firstaidkit/a/d;->to:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-direct {v0, p1, v1}, Lcom/miui/firstaidkit/a/f;-><init>(Landroid/view/View;Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    return-object v0
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public vh()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/a/d;->tn:Ljava/util/List;

    return-object v0
.end method

.method public vi(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/a/d;->to:Lcom/miui/firstaidkit/FirstAidKitActivity;

    return-void
.end method

.method public vj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/a/d;->tp:Ljava/lang/String;

    return-void
.end method

.method public vk(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/a/d;->tn:Ljava/util/List;

    return-void
.end method
