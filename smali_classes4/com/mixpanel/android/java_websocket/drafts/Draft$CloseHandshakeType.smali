.class public final enum Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;
.super Ljava/lang/Enum;
.source "Draft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/java_websocket/drafts/Draft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloseHandshakeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

.field public static final enum NONE:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

.field public static final enum ONEWAY:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

.field public static final enum TWOWAY:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->NONE:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    new-instance v0, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    const-string v1, "ONEWAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->ONEWAY:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    new-instance v0, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    const-string v1, "TWOWAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->TWOWAY:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    sget-object v1, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->NONE:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->ONEWAY:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->TWOWAY:Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->$VALUES:[Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;
    .locals 1

    const-class v0, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    return-object p0
.end method

.method public static values()[Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;
    .locals 1

    sget-object v0, Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->$VALUES:[Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    invoke-virtual {v0}, [Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType;

    return-object v0
.end method
