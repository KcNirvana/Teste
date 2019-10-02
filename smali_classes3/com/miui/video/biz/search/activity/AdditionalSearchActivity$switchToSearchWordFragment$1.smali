.class final Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$switchToSearchWordFragment$1;
.super Ljava/lang/Object;
.source "AdditionalSearchActivity.kt"

# interfaces
.implements Lcom/miui/video/biz/search/fragment/FeedBaseFragment$ISearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->switchToSearchWordFragment()V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "key",
        "",
        "kotlin.jvm.PlatformType",
        "searchType",
        "position",
        "",
        "doSearch"
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

    iput-object p1, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$switchToSearchWordFragment$1;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doSearch(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$switchToSearchWordFragment$1;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    const-string v1, "searchType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->access$doSearchAction(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
