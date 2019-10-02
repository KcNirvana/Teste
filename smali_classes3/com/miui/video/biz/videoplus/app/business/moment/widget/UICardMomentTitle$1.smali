.class Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$1;
.super Ljava/lang/Object;
.source "UICardMomentTitle.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->initFindViews()V
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->registerCheckListener(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->access$000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->unregisterCheckListener(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;)V

    return-void
.end method
