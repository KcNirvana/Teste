.class public Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;


# instance fields
.field private final mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;


# direct methods
.method public constructor <init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    return-void
.end method


# virtual methods
.method public createHeadsUpMessageView()Lcom/miui/luckymoney/ui/view/messageview/MessageView;
    .locals 2

    new-instance v0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-direct {v0, v1}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;-><init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;)V

    return-object v0
.end method

.method public createLockScreenMessageView()Lcom/miui/luckymoney/ui/view/messageview/MessageView;
    .locals 2

    new-instance v0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-direct {v0, v1}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;-><init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;)V

    return-object v0
.end method
