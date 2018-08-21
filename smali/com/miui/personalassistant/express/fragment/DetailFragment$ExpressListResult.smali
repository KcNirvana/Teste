.class Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;
.super Lcom/miui/personalassistant/request/core/BaseResult;
.source "DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/fragment/DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpressListResult"
.end annotation


# instance fields
.field mList:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-direct {p0}, Lcom/miui/personalassistant/request/core/BaseResult;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/fragment/DetailFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

    return-void
.end method


# virtual methods
.method public hasData()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;->mList:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shallowClone()Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;-><init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;->mList:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment$ExpressListResult;->mList:Ljava/lang/String;

    return-object v0
.end method
