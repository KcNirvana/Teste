.class public Lcom/miui/voicesdk/ActionStatus;
.super Ljava/lang/Object;
.source "ActionStatus.java"


# static fields
.field public static SCREENCAP_LEN:I

.field public static STATUS_FINISH:I

.field public static STATUS_ITEM_BEFORE_FIND:I

.field public static STATUS_ITEM_CONTROL_ERROR:I

.field public static STATUS_ITEM_FINISH:I

.field public static STATUS_KEY_BACK:I

.field public static STATUS_SERVICE_CON:I

.field public static STATUS_UPDATE_ROOTVIEW:I

.field public static STATUS_VIEW_CLICK:I


# instance fields
.field private mKeyEvent:Landroid/view/KeyEvent;

.field private mNode:Lcom/miui/voicesdk/ActionNode;

.field private mPos:I

.field private mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/voicesdk/ActionStatus;->STATUS_FINISH:I

    const/4 v0, 0x1

    sput v0, Lcom/miui/voicesdk/ActionStatus;->STATUS_ITEM_FINISH:I

    const/4 v0, 0x2

    sput v0, Lcom/miui/voicesdk/ActionStatus;->STATUS_ITEM_CONTROL_ERROR:I

    const/4 v0, 0x3

    sput v0, Lcom/miui/voicesdk/ActionStatus;->STATUS_UPDATE_ROOTVIEW:I

    const/4 v0, 0x4

    sput v0, Lcom/miui/voicesdk/ActionStatus;->STATUS_KEY_BACK:I

    const/4 v0, 0x5

    sput v0, Lcom/miui/voicesdk/ActionStatus;->STATUS_SERVICE_CON:I

    const/4 v0, 0x6

    sput v0, Lcom/miui/voicesdk/ActionStatus;->STATUS_ITEM_BEFORE_FIND:I

    const/4 v0, 0x7

    sput v0, Lcom/miui/voicesdk/ActionStatus;->STATUS_VIEW_CLICK:I

    const/16 v0, 0xb

    sput v0, Lcom/miui/voicesdk/ActionStatus;->SCREENCAP_LEN:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/miui/voicesdk/ActionStatus;->STATUS_FINISH:I

    iput v0, p0, Lcom/miui/voicesdk/ActionStatus;->mType:I

    iput p1, p0, Lcom/miui/voicesdk/ActionStatus;->mPos:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/miui/voicesdk/ActionStatus;->STATUS_FINISH:I

    iput v0, p0, Lcom/miui/voicesdk/ActionStatus;->mType:I

    iput p1, p0, Lcom/miui/voicesdk/ActionStatus;->mPos:I

    iput p2, p0, Lcom/miui/voicesdk/ActionStatus;->mType:I

    return-void
.end method


# virtual methods
.method public getActionNode()Lcom/miui/voicesdk/ActionNode;
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/ActionStatus;->mNode:Lcom/miui/voicesdk/ActionNode;

    return-object v0
.end method

.method public getKeyEvent()Landroid/view/KeyEvent;
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/ActionStatus;->mKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public getPos()I
    .locals 1

    iget v0, p0, Lcom/miui/voicesdk/ActionStatus;->mPos:I

    return v0
.end method

.method public getRootNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/ActionStatus;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getStatusType()I
    .locals 1

    iget v0, p0, Lcom/miui/voicesdk/ActionStatus;->mType:I

    return v0
.end method

.method public setActionNode(Lcom/miui/voicesdk/ActionNode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voicesdk/ActionStatus;->mNode:Lcom/miui/voicesdk/ActionNode;

    return-void
.end method

.method public setKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voicesdk/ActionStatus;->mKeyEvent:Landroid/view/KeyEvent;

    return-void
.end method

.method public setRootNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voicesdk/ActionStatus;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method public setStatusType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/voicesdk/ActionStatus;->mType:I

    return-void
.end method
