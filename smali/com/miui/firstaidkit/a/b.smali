.class public Lcom/miui/firstaidkit/a/b;
.super Lcom/miui/common/card/models/BaseCardModel;
.source ""


# instance fields
.field private tf:Ljava/util/List;

.field private tg:Lcom/miui/firstaidkit/FirstAidKitActivity;

.field private th:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f03008e

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    return-void
.end method

.method static synthetic ve(Lcom/miui/firstaidkit/a/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/a/b;->tf:Ljava/util/List;

    return-object v0
.end method

.method static synthetic vf(Lcom/miui/firstaidkit/a/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/a/b;->th:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 2

    new-instance v0, Lcom/miui/firstaidkit/a/c;

    iget-object v1, p0, Lcom/miui/firstaidkit/a/b;->tg:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-direct {v0, p1, v1}, Lcom/miui/firstaidkit/a/c;-><init>(Landroid/view/View;Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    return-object v0
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public vb(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/a/b;->tf:Ljava/util/List;

    return-void
.end method

.method public vc(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/a/b;->tg:Lcom/miui/firstaidkit/FirstAidKitActivity;

    return-void
.end method

.method public vd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/a/b;->th:Ljava/lang/String;

    return-void
.end method
