.class public final enum Lcom/kaltura/playkit/PKDrmParams$Scheme;
.super Ljava/lang/Enum;
.source "PKDrmParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PKDrmParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/PKDrmParams$Scheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/PKDrmParams$Scheme;

.field public static final enum FairPlay:Lcom/kaltura/playkit/PKDrmParams$Scheme;

.field public static final enum PlayReadyCENC:Lcom/kaltura/playkit/PKDrmParams$Scheme;

.field public static final enum PlayReadyClassic:Lcom/kaltura/playkit/PKDrmParams$Scheme;

.field public static final enum Unknown:Lcom/kaltura/playkit/PKDrmParams$Scheme;

.field public static final enum WidevineCENC:Lcom/kaltura/playkit/PKDrmParams$Scheme;

.field public static final enum WidevineClassic:Lcom/kaltura/playkit/PKDrmParams$Scheme;


# instance fields
.field private supported:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;

    const-string v1, "WidevineCENC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/PKDrmParams$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->WidevineCENC:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    new-instance v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;

    const-string v1, "PlayReadyCENC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/kaltura/playkit/PKDrmParams$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->PlayReadyCENC:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    new-instance v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;

    const-string v1, "WidevineClassic"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/kaltura/playkit/PKDrmParams$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->WidevineClassic:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    new-instance v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;

    const-string v1, "PlayReadyClassic"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/kaltura/playkit/PKDrmParams$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->PlayReadyClassic:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    new-instance v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;

    const-string v1, "FairPlay"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/kaltura/playkit/PKDrmParams$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->FairPlay:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    new-instance v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;

    const-string v1, "Unknown"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/kaltura/playkit/PKDrmParams$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->Unknown:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kaltura/playkit/PKDrmParams$Scheme;

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->WidevineCENC:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->PlayReadyCENC:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->WidevineClassic:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->PlayReadyClassic:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->FairPlay:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->Unknown:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    aput-object v1, v0, v7

    sput-object v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->$VALUES:[Lcom/kaltura/playkit/PKDrmParams$Scheme;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/PKDrmParams$Scheme;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/PKDrmParams$Scheme;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/PKDrmParams$Scheme;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->$VALUES:[Lcom/kaltura/playkit/PKDrmParams$Scheme;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/PKDrmParams$Scheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/PKDrmParams$Scheme;

    return-object v0
.end method


# virtual methods
.method public isSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->supported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/PKDrmParams$2;->$SwitchMap$com$kaltura$playkit$PKDrmParams$Scheme:[I

    invoke-virtual {p0}, Lcom/kaltura/playkit/PKDrmParams$Scheme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->supported:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->supported:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->widevineClassic()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->supported:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->playReady()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->supported:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->widevineModular()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->supported:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kaltura/playkit/PKDrmParams$Scheme;->supported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
