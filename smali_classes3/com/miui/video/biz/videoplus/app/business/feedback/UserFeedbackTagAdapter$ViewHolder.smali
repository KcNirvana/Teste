.class Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UserFeedbackTagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private mLayoutContent:Landroid/view/View;

.field public mTvTag:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;->this$0:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;-><init>(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;->mLayoutContent:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public refreshView(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;->mTvTag:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;->mLayoutContent:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->shape_plus_bg_negative_feedback_tag_selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;->mTvTag:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->access$200()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;->mLayoutContent:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->shape_plus_bg_negative_feedback_tag_normal:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter$ViewHolder;->mTvTag:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;->access$300()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
