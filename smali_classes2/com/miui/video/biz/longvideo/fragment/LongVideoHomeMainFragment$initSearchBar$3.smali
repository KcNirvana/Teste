.class final Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$3;
.super Ljava/lang/Object;
.source "LongVideoHomeMainFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->initSearchBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$3;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$3;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;

    invoke-virtual {p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "maintab_video"

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$3;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;

    invoke-static {v1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->access$getVSearchBar$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Lcom/miui/video/service/widget/ui/UISearchBar;->getvImgRightNew()Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "vSearchBar!!.getvImgRightNew()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/miui/video/base/routers/pgc/PgcUtil;->openSubscribedPage(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$3;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;

    invoke-static {p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->access$getVSearchBar$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/service/widget/ui/UISearchBar;->getvImgRightNew()Landroid/widget/ImageView;

    move-result-object p1

    const-string v0, "vSearchBar!!.getvImgRightNew()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
