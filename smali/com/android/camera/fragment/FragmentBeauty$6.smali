.class Lcom/android/camera/fragment/FragmentBeauty$6;
.super Ljava/lang/Object;
.source "FragmentBeauty.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function",
        "<",
        "Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;",
        "Lcom/android/camera/fragment/FragmentBeauty$SubTab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBeauty;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBeauty;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$6;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Lcom/android/camera/fragment/FragmentBeauty$SubTab;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->createByInfo(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty$6;->apply(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    move-result-object v0

    return-object v0
.end method
