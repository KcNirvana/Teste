.class Lcom/android/camera/fragment/FragmentBeauty$5;
.super Ljava/lang/Object;
.source "FragmentBeauty.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBeauty;->initTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate",
        "<",
        "Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBeauty;

.field final synthetic val$group:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBeauty;Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$5;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty$5;->val$group:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->group:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty$5;->val$group:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty$5;->test(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Z

    move-result v0

    return v0
.end method
