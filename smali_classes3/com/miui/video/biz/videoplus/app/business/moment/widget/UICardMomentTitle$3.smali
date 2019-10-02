.class Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$3;
.super Ljava/lang/Object;
.source "UICardMomentTitle.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;


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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getGroupName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$400(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$600(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$string;->cancel_choose:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$400(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$700(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$string;->choose:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
