.class Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$1;
.super Ljava/lang/Object;
.source "TimeFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->createChildFragment()V
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uiRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    instance-of p2, p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    if-eqz p2, :cond_0

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    goto :goto_0

    :cond_0
    const-string p2, "KEY_EDIT_MODE_OPEN"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->dropMotionEvent(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$100(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/support/design/widget/AppBarLayout;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/video/framework/impl/IUIListener;

    const-string p2, "KEY_EDIT_MODE_OPEN"

    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, v0}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$200(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorTopIn(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$300(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->registerCheckListener(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;)V

    goto :goto_0

    :cond_1
    const-string p2, "KEY_EDIT_MODE_EXIT"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p1, p3}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$400(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;Z)V

    :cond_2
    :goto_0
    return-void
.end method
