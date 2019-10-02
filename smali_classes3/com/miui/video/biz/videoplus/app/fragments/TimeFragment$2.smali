.class Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$2;
.super Ljava/lang/Object;
.source "TimeFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getCheckCount()I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$200(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/miui/video/biz/videoplus/R$plurals;->plus_edit_top_titletext:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p3, p4, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/video/framework/impl/IUIListener;

    const-string p2, "KEY_EDIT_MODE_CHECKED_CHANGE"

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getCheckCount()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, v2, p3}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
