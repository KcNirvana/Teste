.class final Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$initSearchBar$2;
.super Ljava/lang/Object;
.source "AdditionalSearchActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->initSearchBar()V
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
.field final synthetic this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$initSearchBar$2;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "search_start_page"

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$initSearchBar$2;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    invoke-static {v0}, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->access$getMSearchViewStack$p(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string p1, "search_result_page"

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$initSearchBar$2;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    invoke-static {v0}, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->access$getVSearchHomeFragment$p(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;)Lcom/miui/video/biz/search/fragment/SearchHomeFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$initSearchBar$2;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->startGoogleVoiceSearch(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
