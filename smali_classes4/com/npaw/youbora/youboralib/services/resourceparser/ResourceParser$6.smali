.class synthetic Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$6;
.super Ljava/lang/Object;
.source "ResourceParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$npaw$youbora$youboralib$services$resourceparser$cdn$CDNHeader$HeaderType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->values()[Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$6;->$SwitchMap$com$npaw$youbora$youboralib$services$resourceparser$cdn$CDNHeader$HeaderType:[I

    :try_start_0
    sget-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$6;->$SwitchMap$com$npaw$youbora$youboralib$services$resourceparser$cdn$CDNHeader$HeaderType:[I

    sget-object v1, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderHost:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$6;->$SwitchMap$com$npaw$youbora$youboralib$services$resourceparser$cdn$CDNHeader$HeaderType:[I

    sget-object v1, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderType:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$6;->$SwitchMap$com$npaw$youbora$youboralib$services$resourceparser$cdn$CDNHeader$HeaderType:[I

    sget-object v1, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderHostAndType:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$6;->$SwitchMap$com$npaw$youbora$youboralib$services$resourceparser$cdn$CDNHeader$HeaderType:[I

    sget-object v1, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderTypeAndHost:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
