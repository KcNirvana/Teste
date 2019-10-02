.class Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;
.super Ljava/lang/Object;
.source "UICardMomentTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isExist(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$200(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/framework/impl/IActionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$200(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/framework/impl/IActionListener;

    move-result-object p1

    const-string v1, "action_uncheck_all"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$400(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$300(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->choose:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$200(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/framework/impl/IActionListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$200(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/framework/impl/IActionListener;

    move-result-object p1

    const-string v1, "action_check_all"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$400(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$500(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->cancel_choose:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
