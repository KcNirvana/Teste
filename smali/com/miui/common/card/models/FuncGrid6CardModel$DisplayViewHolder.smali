.class Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private icon:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

.field private remoteName:Ljava/lang/String;

.field private remoteSummary:Ljava/lang/String;

.field private summaryTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->icon:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->remoteName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->remoteSummary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->summaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>(Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/miui/common/card/GridFunctionData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->icon:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    iput-object p2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->titleTextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->summaryTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->remoteName:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/miui/common/card/GridFunctionData;->getSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->remoteSummary:Ljava/lang/String;

    return-void
.end method
