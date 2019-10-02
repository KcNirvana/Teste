.class public Lcom/miui/zeus/columbus/common/JumpControl;
.super Lcom/miui/zeus/columbus/ad/enity/GsonEntityBase;
.source "JumpControl.java"


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "JumpControl"


# instance fields
.field private autoLaunch:I
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field

.field private callee:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field

.field private clickTrackUrl:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field

.field private jumpMode:I
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mode:I
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sendLog:I
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field

.field private targetType:I
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/enity/GsonEntityBase;-><init>()V

    return-void
.end method

.method public static final deserialize(Ljava/lang/String;)Lcom/miui/zeus/columbus/common/JumpControl;
    .locals 2

    const-class v0, Lcom/miui/zeus/columbus/common/JumpControl;

    const-string v1, "JumpControl"

    invoke-static {v0, p0, v1}, Lcom/miui/zeus/columbus/util/c;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/enity/IGsonEntity;

    move-result-object p0

    check-cast p0, Lcom/miui/zeus/columbus/common/JumpControl;

    return-object p0
.end method


# virtual methods
.method public getAutoLaunch()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/common/JumpControl;->autoLaunch:I

    return v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/common/JumpControl;->callee:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/common/JumpControl;->clickTrackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJumpMode()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/common/JumpControl;->jumpMode:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/common/JumpControl;->mode:I

    return v0
.end method

.method public getSendLog()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/common/JumpControl;->sendLog:I

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "JumpControl"

    return-object v0
.end method

.method public getTargetType()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/common/JumpControl;->targetType:I

    return v0
.end method

.method public setAutoLaunch(I)V
    .locals 0

    iput p1, p0, Lcom/miui/zeus/columbus/common/JumpControl;->autoLaunch:I

    return-void
.end method

.method public setCallee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/common/JumpControl;->callee:Ljava/lang/String;

    return-void
.end method

.method public setClickTrackUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/common/JumpControl;->clickTrackUrl:Ljava/lang/String;

    return-void
.end method

.method public setJumpMode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/zeus/columbus/common/JumpControl;->jumpMode:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/zeus/columbus/common/JumpControl;->mode:I

    return-void
.end method

.method public setSendLog(I)V
    .locals 0

    iput p1, p0, Lcom/miui/zeus/columbus/common/JumpControl;->sendLog:I

    return-void
.end method

.method public setTargetType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/zeus/columbus/common/JumpControl;->targetType:I

    return-void
.end method
