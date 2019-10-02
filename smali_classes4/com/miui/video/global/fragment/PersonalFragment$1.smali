.class Lcom/miui/video/global/fragment/PersonalFragment$1;
.super Ljava/lang/Object;
.source "PersonalFragment.java"

# interfaces
.implements Lcom/miui/video/base/account/VideoMiAccountManager$AccountUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/global/fragment/PersonalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/global/fragment/PersonalFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/global/fragment/PersonalFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/fragment/PersonalFragment$1;->this$0:Lcom/miui/video/global/fragment/PersonalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeListener(Landroid/accounts/Account;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/global/fragment/PersonalFragment$1;->this$0:Lcom/miui/video/global/fragment/PersonalFragment;

    invoke-static {p1}, Lcom/miui/video/global/fragment/PersonalFragment;->access$000(Lcom/miui/video/global/fragment/PersonalFragment;)V

    return-void
.end method
