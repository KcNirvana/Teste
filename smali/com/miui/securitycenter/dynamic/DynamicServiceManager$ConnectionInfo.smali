.class Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mConn:Lcom/miui/securitycenter/dynamic/ServiceConnection;

.field private mManager:Lcom/miui/securitycenter/dynamic/AbsDynamicManager;

.field private mService:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)Lcom/miui/securitycenter/dynamic/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->mConn:Lcom/miui/securitycenter/dynamic/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)Lcom/miui/securitycenter/dynamic/AbsDynamicManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->mManager:Lcom/miui/securitycenter/dynamic/AbsDynamicManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->mService:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;Lcom/miui/securitycenter/dynamic/ServiceConnection;)Lcom/miui/securitycenter/dynamic/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->mConn:Lcom/miui/securitycenter/dynamic/ServiceConnection;

    return-object p1
.end method

.method static synthetic -set1(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;Lcom/miui/securitycenter/dynamic/AbsDynamicManager;)Lcom/miui/securitycenter/dynamic/AbsDynamicManager;
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->mManager:Lcom/miui/securitycenter/dynamic/AbsDynamicManager;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->mService:Ljava/lang/String;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;-><init>()V

    return-void
.end method
