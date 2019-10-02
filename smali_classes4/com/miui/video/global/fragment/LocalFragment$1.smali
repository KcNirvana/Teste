.class Lcom/miui/video/global/fragment/LocalFragment$1;
.super Lcom/miui/video/common/library/base/BasePresenter;
.source "LocalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/global/fragment/LocalFragment;->createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/global/fragment/LocalFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/global/fragment/LocalFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/fragment/LocalFragment$1;->this$0:Lcom/miui/video/global/fragment/LocalFragment;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/library/base/BaseCase;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
