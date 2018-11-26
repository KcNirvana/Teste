.class public Lcom/miui/securitycenter/dynamic/ServiceRegistry;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sSerciceMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/securitycenter/dynamic/ServiceRegistry;->sSerciceMap:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/securitycenter/dynamic/ServiceRegistry;->sSerciceMap:Ljava/util/HashMap;

    const-string/jumbo v1, "app_activity"

    const-class v2, Lcom/miui/securitycenter/dynamic/app/AppActivityManager;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServcieClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/miui/securitycenter/dynamic/ServiceRegistry;->sSerciceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
