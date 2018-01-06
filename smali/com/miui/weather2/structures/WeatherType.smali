.class public Lcom/miui/weather2/structures/WeatherType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/structures/WeatherType$UNUSED_NEW_WEATHER_TYPE;
    }
.end annotation


# static fields
.field public static final CLOUDY:I = 0x1

.field public static final FLOAT_DIRT:I = 0x17

.field public static final FOG:I = 0x3

.field public static final FREEZING_RAIN:I = 0x19

.field public static final HEAVY_RAIN:I = 0x9

.field public static final HEAVY_SAND:I = 0x13

.field public static final HEAVY_SNOW:I = 0xf

.field public static final HEAVY_STORM:I = 0x5

.field public static final ICE_RAIN:I = 0x16

.field public static final MIDDLE_RAIN:I = 0xa

.field public static final MIDDLE_SAND:I = 0x14

.field public static final MIDDLE_SNOW:I = 0x10

.field public static final NULLDATA:I = 0x63

.field public static final OVERCAST:I = 0x2

.field public static final PARTLY_SNOW:I = 0xe

.field public static final PARTLY_STORM:I = 0x8

.field public static final PM_DIRT:I = 0x18

.field public static final RAIN_AND_SNOW:I = 0xc

.field public static final SMALL_RAIN:I = 0xb

.field public static final SMALL_SAND:I = 0x15

.field public static final SMALL_SNOW:I = 0x11

.field public static final STORM:I = 0x6

.field public static final SUNNY:I = 0x0

.field public static final SUPER_SAND:I = 0x12

.field public static final SUPER_SNOW:I = 0xd

.field public static final SUPER_STORM:I = 0x4

.field public static final T_STORM:I = 0x7

.field public static final V7V6_MAP:Landroid/util/SparseIntArray;

.field public static final VALID_WEATHER_TYPE_NUM:I = 0x19

.field public static final WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/16 v4, 0x18

    const/4 v3, 0x3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x35

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x21

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x36

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x37

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x38

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x39

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x31

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1c

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x12d

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x35

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x21

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x36

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x37

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x38

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x39

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x31

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1c

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x26

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x19

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x12d

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateTowType(II)I
    .locals 3

    const/16 v0, 0x63

    sget-object v1, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    sget-object v2, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v1, v0, :cond_2

    if-eq v2, v0, :cond_2

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return p0

    :cond_1
    move p0, p1

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    move p0, v0

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_0

    move p0, p1

    goto :goto_0
.end method

.method public static convertV6WeatherTypeToV5WeatherType(I)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    sget-object v1, Lcom/miui/weather2/structures/WeatherType;->WEATHER_LEVEL_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lt p0, v1, :cond_2

    :cond_0
    move p0, v0

    :cond_1
    :goto_0
    return p0

    :cond_2
    const/16 v1, 0x19

    if-le p0, v1, :cond_1

    move p0, v0

    goto :goto_0
.end method

.method public static convertV7WeatherTypeToV6WetherType(I)I
    .locals 1

    sget-object v0, Lcom/miui/weather2/structures/WeatherType;->V7V6_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public static transformMinuteRainWeatherType(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-gt v1, p0, :cond_1

    const/16 v1, 0xb

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xc

    if-ne v1, p0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-gt v1, p0, :cond_0

    const/16 v1, 0x11

    if-gt p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
