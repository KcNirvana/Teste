.class public Lcom/sina/weibo/sdk/component/view/CommentComponentView;
.super Landroid/widget/FrameLayout;
.source "CommentComponentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;,
        Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;
    }
.end annotation


# static fields
.field private static final ALREADY_COMMENT_EN:Ljava/lang/String; = "Comment"

.field private static final ALREADY_COMMENT_ZH_CN:Ljava/lang/String; = "\u5fae\u535a\u70ed\u8bc4"

.field private static final ALREADY_COMMENT_ZH_TW:Ljava/lang/String; = "\u5fae\u535a\u71b1\u8a55"

.field private static final COMMENT_H5:Ljava/lang/String; = "http://widget.weibo.com/distribution/socail_comments_sdk.php"


# instance fields
.field private mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

.field private mContentLy:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/component/view/CommentComponentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->execAttented()V

    return-void
.end method

.method private execAttented()V
    .locals 7

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v4}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$0(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    new-instance v2, Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "http://widget.weibo.com/distribution/socail_comments_sdk.php"

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "Comment"

    const-string/jumbo v5, "\u5fae\u535a\u70ed\u8bc4"

    const-string/jumbo v6, "\u5fae\u535a\u71b1\u8a55"

    invoke-static {v3, v4, v5, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setSpecifyTitle(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v3}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$0(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setAppKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v3}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$1(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setCommentTopic(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v3}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$2(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setCommentContent(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v3}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$3(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setCommentCategory(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v3}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$4(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setAuthListener(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v3}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$5(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setToken(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->createRequestParamBundle()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 10

    const/16 v6, 0x14

    const/16 v9, 0x10

    const/4 v8, 0x0

    const/4 v7, -0x2

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mContentLy:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mContentLy:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mContentLy:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "sdk_weibo_logo.png"

    invoke-static {p1, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "Comment"

    const-string/jumbo v5, "\u5fae\u535a\u70ed\u8bc4"

    const-string/jumbo v6, "\u5fae\u535a\u71b1\u8a55"

    invoke-static {p1, v4, v5, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, -0x7e00

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x2

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mContentLy:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mContentLy:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mContentLy:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/sina/weibo/sdk/component/view/CommentComponentView$1;

    invoke-direct {v4, p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$1;-><init>(Lcom/sina/weibo/sdk/component/view/CommentComponentView;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setCommentParam(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    return-void
.end method
