.class Lcom/miui/video/global/utils/AppPrivacyInitUtil$InstanceHolder;
.super Ljava/lang/Object;
.source "AppPrivacyInitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/global/utils/AppPrivacyInitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final instance:Lcom/miui/video/global/utils/AppPrivacyInitUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/global/utils/AppPrivacyInitUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/global/utils/AppPrivacyInitUtil;-><init>(Lcom/miui/video/global/utils/AppPrivacyInitUtil$1;)V

    sput-object v0, Lcom/miui/video/global/utils/AppPrivacyInitUtil$InstanceHolder;->instance:Lcom/miui/video/global/utils/AppPrivacyInitUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/miui/video/global/utils/AppPrivacyInitUtil;
    .locals 1

    sget-object v0, Lcom/miui/video/global/utils/AppPrivacyInitUtil$InstanceHolder;->instance:Lcom/miui/video/global/utils/AppPrivacyInitUtil;

    return-object v0
.end method
