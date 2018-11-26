.class public final Lcom/google/android/exoplayer2/util/Util;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CRC32_BYTES_MSBF:[I

.field public static final DEVICE:Ljava/lang/String;

.field public static final DEVICE_DEBUG_INFO:Ljava/lang/String;

.field private static final ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final SDK_INT:I

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final XS_DURATION_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x4f

    const/16 v1, 0x1a

    const/16 v4, 0x19

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v4, :cond_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_0
    sput v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    const-string/jumbo v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "%([A-Fa-f0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x100

    new-array v0, v0, [I

    aput v3, v0, v3

    const v2, 0x4c11db7

    const/4 v3, 0x1

    aput v2, v0, v3

    const v2, 0x9823b6e

    const/4 v3, 0x2

    aput v2, v0, v3

    const v2, 0xd4326d9

    const/4 v3, 0x3

    aput v2, v0, v3

    const v2, 0x130476dc

    const/4 v3, 0x4

    aput v2, v0, v3

    const v2, 0x17c56b6b

    const/4 v3, 0x5

    aput v2, v0, v3

    const v2, 0x1a864db2

    const/4 v3, 0x6

    aput v2, v0, v3

    const v2, 0x1e475005

    const/4 v3, 0x7

    aput v2, v0, v3

    const v2, 0x2608edb8

    const/16 v3, 0x8

    aput v2, v0, v3

    const v2, 0x22c9f00f

    const/16 v3, 0x9

    aput v2, v0, v3

    const v2, 0x2f8ad6d6

    const/16 v3, 0xa

    aput v2, v0, v3

    const v2, 0x2b4bcb61

    const/16 v3, 0xb

    aput v2, v0, v3

    const v2, 0x350c9b64

    const/16 v3, 0xc

    aput v2, v0, v3

    const v2, 0x31cd86d3

    const/16 v3, 0xd

    aput v2, v0, v3

    const v2, 0x3c8ea00a

    const/16 v3, 0xe

    aput v2, v0, v3

    const v2, 0x384fbdbd

    const/16 v3, 0xf

    aput v2, v0, v3

    const v2, 0x4c11db70    # 3.8235584E7f

    const/16 v3, 0x10

    aput v2, v0, v3

    const v2, 0x48d0c6c7

    const/16 v3, 0x11

    aput v2, v0, v3

    const v2, 0x4593e01e

    const/16 v3, 0x12

    aput v2, v0, v3

    const v2, 0x4152fda9

    const/16 v3, 0x13

    aput v2, v0, v3

    const v2, 0x5f15adac

    const/16 v3, 0x14

    aput v2, v0, v3

    const v2, 0x5bd4b01b

    const/16 v3, 0x15

    aput v2, v0, v3

    const v2, 0x569796c2

    const/16 v3, 0x16

    aput v2, v0, v3

    const v2, 0x52568b75

    const/16 v3, 0x17

    aput v2, v0, v3

    const v2, 0x6a1936c8

    const/16 v3, 0x18

    aput v2, v0, v3

    const v2, 0x6ed82b7f

    aput v2, v0, v4

    const v2, 0x639b0da6

    aput v2, v0, v1

    const v1, 0x675a1011

    const/16 v2, 0x1b

    aput v1, v0, v2

    const v1, 0x791d4014

    const/16 v2, 0x1c

    aput v1, v0, v2

    const v1, 0x7ddc5da3

    const/16 v2, 0x1d

    aput v1, v0, v2

    const v1, 0x709f7b7a

    const/16 v2, 0x1e

    aput v1, v0, v2

    const v1, 0x745e66cd

    const/16 v2, 0x1f

    aput v1, v0, v2

    const v1, -0x67dc4920

    const/16 v2, 0x20

    aput v1, v0, v2

    const v1, -0x631d54a9    # -1.4999716E-21f

    const/16 v2, 0x21

    aput v1, v0, v2

    const v1, -0x6e5e7272

    const/16 v2, 0x22

    aput v1, v0, v2

    const v1, -0x6a9f6fc7

    const/16 v2, 0x23

    aput v1, v0, v2

    const v1, -0x74d83fc4

    const/16 v2, 0x24

    aput v1, v0, v2

    const v1, -0x70192275

    const/16 v2, 0x25

    aput v1, v0, v2

    const v1, -0x7d5a04ae

    const/16 v2, 0x26

    aput v1, v0, v2

    const v1, -0x799b191b

    const/16 v2, 0x27

    aput v1, v0, v2

    const v1, -0x41d4a4a8

    const/16 v2, 0x28

    aput v1, v0, v2

    const v1, -0x4515b911

    const/16 v2, 0x29

    aput v1, v0, v2

    const v1, -0x48569fca

    const/16 v2, 0x2a

    aput v1, v0, v2

    const v1, -0x4c97827f

    const/16 v2, 0x2b

    aput v1, v0, v2

    const v1, -0x52d0d27c

    const/16 v2, 0x2c

    aput v1, v0, v2

    const v1, -0x5611cfcd

    const/16 v2, 0x2d

    aput v1, v0, v2

    const v1, -0x5b52e916

    const/16 v2, 0x2e

    aput v1, v0, v2

    const v1, -0x5f93f4a3    # -1.9993737E-19f

    const/16 v2, 0x2f

    aput v1, v0, v2

    const v1, -0x2bcd9270

    const/16 v2, 0x30

    aput v1, v0, v2

    const v1, -0x2f0c8fd9

    const/16 v2, 0x31

    aput v1, v0, v2

    const v1, -0x224fa902

    const/16 v2, 0x32

    aput v1, v0, v2

    const v1, -0x268eb4b7

    const/16 v2, 0x33

    aput v1, v0, v2

    const v1, -0x38c9e4b4

    const/16 v2, 0x34

    aput v1, v0, v2

    const v1, -0x3c08f905

    const/16 v2, 0x35

    aput v1, v0, v2

    const v1, -0x314bdfde

    const/16 v2, 0x36

    aput v1, v0, v2

    const v1, -0x358ac26b

    const/16 v2, 0x37

    aput v1, v0, v2

    const v1, -0xdc57fd8

    const/16 v2, 0x38

    aput v1, v0, v2

    const v1, -0x9046261

    const/16 v2, 0x39

    aput v1, v0, v2

    const v1, -0x44744ba

    const/16 v2, 0x3a

    aput v1, v0, v2

    const v1, -0x86590f

    const/16 v2, 0x3b

    aput v1, v0, v2

    const v1, -0x1ec1090c

    const/16 v2, 0x3c

    aput v1, v0, v2

    const v1, -0x1a0014bd

    const/16 v2, 0x3d

    aput v1, v0, v2

    const v1, -0x17433266

    const/16 v2, 0x3e

    aput v1, v0, v2

    const v1, -0x13822fd3

    const/16 v2, 0x3f

    aput v1, v0, v2

    const v1, 0x34867077

    const/16 v2, 0x40

    aput v1, v0, v2

    const v1, 0x30476dc0

    const/16 v2, 0x41

    aput v1, v0, v2

    const v1, 0x3d044b19

    const/16 v2, 0x42

    aput v1, v0, v2

    const v1, 0x39c556ae

    const/16 v2, 0x43

    aput v1, v0, v2

    const v1, 0x278206ab

    const/16 v2, 0x44

    aput v1, v0, v2

    const v1, 0x23431b1c

    const/16 v2, 0x45

    aput v1, v0, v2

    const v1, 0x2e003dc5

    const/16 v2, 0x46

    aput v1, v0, v2

    const v1, 0x2ac12072

    const/16 v2, 0x47

    aput v1, v0, v2

    const v1, 0x128e9dcf    # 9.000363E-28f

    const/16 v2, 0x48

    aput v1, v0, v2

    const v1, 0x164f8078

    const/16 v2, 0x49

    aput v1, v0, v2

    const v1, 0x1b0ca6a1

    const/16 v2, 0x4a

    aput v1, v0, v2

    const v1, 0x1fcdbb16

    const/16 v2, 0x4b

    aput v1, v0, v2

    const v1, 0x18aeb13

    const/16 v2, 0x4c

    aput v1, v0, v2

    const v1, 0x54bf6a4

    const/16 v2, 0x4d

    aput v1, v0, v2

    const v1, 0x808d07d

    const/16 v2, 0x4e

    aput v1, v0, v2

    const v1, 0xcc9cdca

    aput v1, v0, v5

    const v1, 0x7897ab07

    const/16 v2, 0x50

    aput v1, v0, v2

    const v1, 0x7c56b6b0

    const/16 v2, 0x51

    aput v1, v0, v2

    const v1, 0x71159069

    const/16 v2, 0x52

    aput v1, v0, v2

    const v1, 0x75d48dde

    const/16 v2, 0x53

    aput v1, v0, v2

    const v1, 0x6b93dddb

    const/16 v2, 0x54

    aput v1, v0, v2

    const v1, 0x6f52c06c

    const/16 v2, 0x55

    aput v1, v0, v2

    const v1, 0x6211e6b5

    const/16 v2, 0x56

    aput v1, v0, v2

    const v1, 0x66d0fb02

    const/16 v2, 0x57

    aput v1, v0, v2

    const v1, 0x5e9f46bf

    const/16 v2, 0x58

    aput v1, v0, v2

    const v1, 0x5a5e5b08

    const/16 v2, 0x59

    aput v1, v0, v2

    const v1, 0x571d7dd1

    const/16 v2, 0x5a

    aput v1, v0, v2

    const v1, 0x53dc6066

    const/16 v2, 0x5b

    aput v1, v0, v2

    const v1, 0x4d9b3063    # 3.25454944E8f

    const/16 v2, 0x5c

    aput v1, v0, v2

    const v1, 0x495a2dd4    # 893661.25f

    const/16 v2, 0x5d

    aput v1, v0, v2

    const v1, 0x44190b0d

    const/16 v2, 0x5e

    aput v1, v0, v2

    const v1, 0x40d816ba

    const/16 v2, 0x5f

    aput v1, v0, v2

    const v1, -0x535a3969

    const/16 v2, 0x60

    aput v1, v0, v2

    const v1, -0x579b24e0

    const/16 v2, 0x61

    aput v1, v0, v2

    const v1, -0x5ad80207

    const/16 v2, 0x62

    aput v1, v0, v2

    const v1, -0x5e191fb2

    const/16 v2, 0x63

    aput v1, v0, v2

    const v1, -0x405e4fb5

    const/16 v2, 0x64

    aput v1, v0, v2

    const v1, -0x449f5204

    const/16 v2, 0x65

    aput v1, v0, v2

    const v1, -0x49dc74db

    const/16 v2, 0x66

    aput v1, v0, v2

    const v1, -0x4d1d696e

    const/16 v2, 0x67

    aput v1, v0, v2

    const v1, -0x7552d4d1

    const/16 v2, 0x68

    aput v1, v0, v2

    const v1, -0x7193c968

    const/16 v2, 0x69

    aput v1, v0, v2

    const v1, -0x7cd0efbf

    const/16 v2, 0x6a

    aput v1, v0, v2

    const v1, -0x7811f20a

    const/16 v2, 0x6b

    aput v1, v0, v2

    const v1, -0x6656a20d

    const/16 v2, 0x6c

    aput v1, v0, v2

    const v1, -0x6297bfbc

    const/16 v2, 0x6d

    aput v1, v0, v2

    const v1, -0x6fd49963

    const/16 v2, 0x6e

    aput v1, v0, v2

    const v1, -0x6b1584d6

    const/16 v2, 0x6f

    aput v1, v0, v2

    const v1, -0x1f4be219

    const/16 v2, 0x70

    aput v1, v0, v2

    const v1, -0x1b8affb0

    const/16 v2, 0x71

    aput v1, v0, v2

    const v1, -0x16c9d977

    const/16 v2, 0x72

    aput v1, v0, v2

    const v1, -0x1208c4c2

    const/16 v2, 0x73

    aput v1, v0, v2

    const v1, -0xc4f94c5

    const/16 v2, 0x74

    aput v1, v0, v2

    const v1, -0x88e8974

    const/16 v2, 0x75

    aput v1, v0, v2

    const v1, -0x5cdafab

    const/16 v2, 0x76

    aput v1, v0, v2

    const v1, -0x10cb21e

    const/16 v2, 0x77

    aput v1, v0, v2

    const v1, -0x39430fa1

    const/16 v2, 0x78

    aput v1, v0, v2

    const v1, -0x3d821218

    const/16 v2, 0x79

    aput v1, v0, v2

    const v1, -0x30c134cf

    const/16 v2, 0x7a

    aput v1, v0, v2

    const v1, -0x3400297a

    const/16 v2, 0x7b

    aput v1, v0, v2

    const v1, -0x2a47797d

    const/16 v2, 0x7c

    aput v1, v0, v2

    const v1, -0x2e8664cc

    const/16 v2, 0x7d

    aput v1, v0, v2

    const v1, -0x23c54213

    const/16 v2, 0x7e

    aput v1, v0, v2

    const v1, -0x27045fa6

    const/16 v2, 0x7f

    aput v1, v0, v2

    const v1, 0x690ce0ee

    const/16 v2, 0x80

    aput v1, v0, v2

    const v1, 0x6dcdfd59

    const/16 v2, 0x81

    aput v1, v0, v2

    const v1, 0x608edb80

    const/16 v2, 0x82

    aput v1, v0, v2

    const v1, 0x644fc637

    const/16 v2, 0x83

    aput v1, v0, v2

    const v1, 0x7a089632

    const/16 v2, 0x84

    aput v1, v0, v2

    const v1, 0x7ec98b85

    const/16 v2, 0x85

    aput v1, v0, v2

    const v1, 0x738aad5c

    const/16 v2, 0x86

    aput v1, v0, v2

    const v1, 0x774bb0eb

    const/16 v2, 0x87

    aput v1, v0, v2

    const v1, 0x4f040d56

    const/16 v2, 0x88

    aput v1, v0, v2

    const v1, 0x4bc510e1    # 2.5829826E7f

    const/16 v2, 0x89

    aput v1, v0, v2

    const v1, 0x46863638

    const/16 v2, 0x8a

    aput v1, v0, v2

    const v1, 0x42472b8f

    const/16 v2, 0x8b

    aput v1, v0, v2

    const v1, 0x5c007b8a

    const/16 v2, 0x8c

    aput v1, v0, v2

    const v1, 0x58c1663d

    const/16 v2, 0x8d

    aput v1, v0, v2

    const v1, 0x558240e4

    const/16 v2, 0x8e

    aput v1, v0, v2

    const v1, 0x51435d53

    const/16 v2, 0x8f

    aput v1, v0, v2

    const v1, 0x251d3b9e

    const/16 v2, 0x90

    aput v1, v0, v2

    const v1, 0x21dc2629

    const/16 v2, 0x91

    aput v1, v0, v2

    const v1, 0x2c9f00f0

    const/16 v2, 0x92

    aput v1, v0, v2

    const v1, 0x285e1d47

    const/16 v2, 0x93

    aput v1, v0, v2

    const v1, 0x36194d42

    const/16 v2, 0x94

    aput v1, v0, v2

    const v1, 0x32d850f5

    const/16 v2, 0x95

    aput v1, v0, v2

    const v1, 0x3f9b762c

    const/16 v2, 0x96

    aput v1, v0, v2

    const v1, 0x3b5a6b9b

    const/16 v2, 0x97

    aput v1, v0, v2

    const v1, 0x315d626

    const/16 v2, 0x98

    aput v1, v0, v2

    const v1, 0x7d4cb91

    const/16 v2, 0x99

    aput v1, v0, v2

    const v1, 0xa97ed48

    const/16 v2, 0x9a

    aput v1, v0, v2

    const v1, 0xe56f0ff

    const/16 v2, 0x9b

    aput v1, v0, v2

    const v1, 0x1011a0fa

    const/16 v2, 0x9c

    aput v1, v0, v2

    const v1, 0x14d0bd4d

    const/16 v2, 0x9d

    aput v1, v0, v2

    const v1, 0x19939b94

    const/16 v2, 0x9e

    aput v1, v0, v2

    const v1, 0x1d528623

    const/16 v2, 0x9f

    aput v1, v0, v2

    const v1, -0xed0a9f2

    const/16 v2, 0xa0

    aput v1, v0, v2

    const v1, -0xa11b447

    const/16 v2, 0xa1

    aput v1, v0, v2

    const v1, -0x75292a0

    const/16 v2, 0xa2

    aput v1, v0, v2

    const v1, -0x3938f29

    const/16 v2, 0xa3

    aput v1, v0, v2

    const v1, -0x1dd4df2e

    const/16 v2, 0xa4

    aput v1, v0, v2

    const v1, -0x1915c29b

    const/16 v2, 0xa5

    aput v1, v0, v2

    const v1, -0x1456e444

    const/16 v2, 0xa6

    aput v1, v0, v2

    const v1, -0x1097f9f5

    const/16 v2, 0xa7

    aput v1, v0, v2

    const v1, -0x28d8444a

    const/16 v2, 0xa8

    aput v1, v0, v2

    const v1, -0x2c1959ff

    const/16 v2, 0xa9

    aput v1, v0, v2

    const v1, -0x215a7f28

    const/16 v2, 0xaa

    aput v1, v0, v2

    const v1, -0x259b6291

    const/16 v2, 0xab

    aput v1, v0, v2

    const v1, -0x3bdc3296

    const/16 v2, 0xac

    aput v1, v0, v2

    const v1, -0x3f1d2f23

    const/16 v2, 0xad

    aput v1, v0, v2

    const v1, -0x325e09fc

    const/16 v2, 0xae

    aput v1, v0, v2

    const v1, -0x369f144d

    const/16 v2, 0xaf

    aput v1, v0, v2

    const v1, -0x42c17282

    const/16 v2, 0xb0

    aput v1, v0, v2

    const v1, -0x46006f37

    const/16 v2, 0xb1

    aput v1, v0, v2

    const v1, -0x4b4349f0

    const/16 v2, 0xb2

    aput v1, v0, v2

    const v1, -0x4f825459

    const/16 v2, 0xb3

    aput v1, v0, v2

    const v1, -0x51c5045e

    const/16 v2, 0xb4

    aput v1, v0, v2

    const v1, -0x550419eb

    const/16 v2, 0xb5

    aput v1, v0, v2

    const v1, -0x58473f34

    const/16 v2, 0xb6

    aput v1, v0, v2

    const v1, -0x5c862285

    const/16 v2, 0xb7

    aput v1, v0, v2

    const v1, -0x64c99f3a

    const/16 v2, 0xb8

    aput v1, v0, v2

    const v1, -0x6008828f

    const/16 v2, 0xb9

    aput v1, v0, v2

    const v1, -0x6d4ba458

    const/16 v2, 0xba

    aput v1, v0, v2

    const v1, -0x698ab9e1

    const/16 v2, 0xbb

    aput v1, v0, v2

    const v1, -0x77cde9e6

    const/16 v2, 0xbc

    aput v1, v0, v2

    const v1, -0x730cf453

    const/16 v2, 0xbd

    aput v1, v0, v2

    const v1, -0x7e4fd28c

    const/16 v2, 0xbe

    aput v1, v0, v2

    const v1, -0x7a8ecf3d

    const/16 v2, 0xbf

    aput v1, v0, v2

    const v1, 0x5d8a9099

    const/16 v2, 0xc0

    aput v1, v0, v2

    const v1, 0x594b8d2e

    const/16 v2, 0xc1

    aput v1, v0, v2

    const v1, 0x5408abf7

    const/16 v2, 0xc2

    aput v1, v0, v2

    const v1, 0x50c9b640

    const/16 v2, 0xc3

    aput v1, v0, v2

    const v1, 0x4e8ee645

    const/16 v2, 0xc4

    aput v1, v0, v2

    const v1, 0x4a4ffbf2    # 3407612.5f

    const/16 v2, 0xc5

    aput v1, v0, v2

    const v1, 0x470cdd2b

    const/16 v2, 0xc6

    aput v1, v0, v2

    const v1, 0x43cdc09c

    const/16 v2, 0xc7

    aput v1, v0, v2

    const v1, 0x7b827d21

    const/16 v2, 0xc8

    aput v1, v0, v2

    const v1, 0x7f436096

    const/16 v2, 0xc9

    aput v1, v0, v2

    const v1, 0x7200464f

    const/16 v2, 0xca

    aput v1, v0, v2

    const v1, 0x76c15bf8

    const/16 v2, 0xcb

    aput v1, v0, v2

    const v1, 0x68860bfd

    const/16 v2, 0xcc

    aput v1, v0, v2

    const v1, 0x6c47164a

    const/16 v2, 0xcd

    aput v1, v0, v2

    const v1, 0x61043093

    const/16 v2, 0xce

    aput v1, v0, v2

    const v1, 0x65c52d24

    const/16 v2, 0xcf

    aput v1, v0, v2

    const v1, 0x119b4be9

    const/16 v2, 0xd0

    aput v1, v0, v2

    const v1, 0x155a565e

    const/16 v2, 0xd1

    aput v1, v0, v2

    const v1, 0x18197087

    const/16 v2, 0xd2

    aput v1, v0, v2

    const v1, 0x1cd86d30

    const/16 v2, 0xd3

    aput v1, v0, v2

    const v1, 0x29f3d35

    const/16 v2, 0xd4

    aput v1, v0, v2

    const v1, 0x65e2082

    const/16 v2, 0xd5

    aput v1, v0, v2

    const v1, 0xb1d065b

    const/16 v2, 0xd6

    aput v1, v0, v2

    const v1, 0xfdc1bec

    const/16 v2, 0xd7

    aput v1, v0, v2

    const v1, 0x3793a651

    const/16 v2, 0xd8

    aput v1, v0, v2

    const v1, 0x3352bbe6

    const/16 v2, 0xd9

    aput v1, v0, v2

    const v1, 0x3e119d3f

    const/16 v2, 0xda

    aput v1, v0, v2

    const v1, 0x3ad08088

    const/16 v2, 0xdb

    aput v1, v0, v2

    const v1, 0x2497d08d

    const/16 v2, 0xdc

    aput v1, v0, v2

    const v1, 0x2056cd3a

    const/16 v2, 0xdd

    aput v1, v0, v2

    const v1, 0x2d15ebe3

    const/16 v2, 0xde

    aput v1, v0, v2

    const v1, 0x29d4f654

    const/16 v2, 0xdf

    aput v1, v0, v2

    const v1, -0x3a56d987

    const/16 v2, 0xe0

    aput v1, v0, v2

    const v1, -0x3e97c432

    const/16 v2, 0xe1

    aput v1, v0, v2

    const v1, -0x33d4e2e9    # -4.4856412E7f

    const/16 v2, 0xe2

    aput v1, v0, v2

    const v1, -0x3715ff60    # -479237.0f

    const/16 v2, 0xe3

    aput v1, v0, v2

    const v1, -0x2952af5b

    const/16 v2, 0xe4

    aput v1, v0, v2

    const v1, -0x2d93b2ee

    const/16 v2, 0xe5

    aput v1, v0, v2

    const v1, -0x20d09435

    const/16 v2, 0xe6

    aput v1, v0, v2

    const v1, -0x24118984

    const/16 v2, 0xe7

    aput v1, v0, v2

    const v1, -0x1c5e343f

    const/16 v2, 0xe8

    aput v1, v0, v2

    const v1, -0x189f298a

    const/16 v2, 0xe9

    aput v1, v0, v2

    const v1, -0x15dc0f51

    const/16 v2, 0xea

    aput v1, v0, v2

    const v1, -0x111d12e8

    const/16 v2, 0xeb

    aput v1, v0, v2

    const v1, -0xf5a42e3

    const/16 v2, 0xec

    aput v1, v0, v2

    const v1, -0xb9b5f56

    const/16 v2, 0xed

    aput v1, v0, v2

    const v1, -0x6d8798d

    const/16 v2, 0xee

    aput v1, v0, v2

    const v1, -0x219643c

    const/16 v2, 0xef

    aput v1, v0, v2

    const v1, -0x764702f7

    const/16 v2, 0xf0

    aput v1, v0, v2

    const v1, -0x72861f42    # -7.6999573E-31f

    const/16 v2, 0xf1

    aput v1, v0, v2

    const v1, -0x7fc53999

    const/16 v2, 0xf2

    aput v1, v0, v2

    const v1, -0x7b042430

    const/16 v2, 0xf3

    aput v1, v0, v2

    const v1, -0x6543742b

    const/16 v2, 0xf4

    aput v1, v0, v2

    const v1, -0x6182699e

    const/16 v2, 0xf5

    aput v1, v0, v2

    const v1, -0x6cc14f45

    const/16 v2, 0xf6

    aput v1, v0, v2

    const v1, -0x680052f4

    const/16 v2, 0xf7

    aput v1, v0, v2

    const v1, -0x504fef4f

    const/16 v2, 0xf8

    aput v1, v0, v2

    const v1, -0x548ef2fa

    const/16 v2, 0xf9

    aput v1, v0, v2

    const v1, -0x59cdd421

    const/16 v2, 0xfa

    aput v1, v0, v2

    const v1, -0x5d0cc998

    const/16 v2, 0xfb

    aput v1, v0, v2

    const v1, -0x434b9993

    const/16 v2, 0xfc

    aput v1, v0, v2

    const v1, -0x478a8426

    const/16 v2, 0xfd

    aput v1, v0, v2

    const v1, -0x4ac9a2fd

    const/16 v2, 0xfe

    aput v1, v0, v2

    const v1, -0x4e08bf4c

    const/16 v2, 0xff

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    return-void

    :cond_1
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWithOverflowDefault(JJJ)J
    .locals 6

    add-long v2, p0, p2

    xor-long v0, p0, v2

    xor-long v4, p2, v2

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-wide p4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static binarySearchCeil(Ljava/util/List;Ljava/lang/Object;ZZ)I
    .locals 3

    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_2

    :goto_0
    if-nez p2, :cond_3

    move v0, v1

    :goto_1
    if-nez p3, :cond_4

    :goto_2
    return v0

    :cond_1
    xor-int/lit8 v0, v1, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2
.end method

.method public static binarySearchCeil([JJZZ)I
    .locals 5

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-lt v0, v1, :cond_2

    :cond_0
    if-nez p3, :cond_3

    :goto_1
    if-nez p4, :cond_4

    :goto_2
    return v0

    :cond_1
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2
.end method

.method public static binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    :goto_0
    if-nez p2, :cond_3

    move v0, v1

    :goto_1
    if-nez p3, :cond_4

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v0, v1, 0x2

    neg-int v0, v0

    goto :goto_1

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method public static binarySearchFloor([IIZZ)I
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    :goto_0
    if-nez p2, :cond_3

    :goto_1
    if-nez p3, :cond_4

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    goto :goto_1

    :cond_2
    aget v1, p0, v0

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method public static binarySearchFloor([JJZZ)I
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    :cond_0
    if-nez p3, :cond_3

    :goto_1
    if-nez p4, :cond_4

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    goto :goto_1

    :cond_2
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method public static ceilDivide(II)I
    .locals 1

    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method public static ceilDivide(JJ)J
    .locals 4

    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method public static closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static compareLong(JJ)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    const/4 v0, -0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    cmp-long v2, p0, p2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public static constrainValue(FFF)F
    .locals 1

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static constrainValue(III)I
    .locals 1

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static constrainValue(JJJ)J
    .locals 2

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    array-length v2, p0

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    aget-object v3, p0, v0

    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static crc([BIII)I
    .locals 4

    :goto_0
    if-lt p1, p2, :cond_0

    return p3

    :cond_0
    shl-int/lit8 v0, p3, 0x8

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    ushr-int/lit8 v2, p3, 0x18

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int p3, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static createTempDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-object v0
.end method

.method public static createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static escapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    :goto_0
    if-lt v2, v3, :cond_0

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    if-gtz v0, :cond_3

    if-lt v1, v3, :cond_5

    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->shouldEscapeCharacter(C)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    return-object p0

    :cond_3
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->shouldEscapeCharacter(C)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    move v1, v2

    goto :goto_1

    :cond_4
    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v4, p0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static varargs formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromUtf8Bytes([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static fromUtf8Bytes([BII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static getAudioContentTypeForStreamType(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    :sswitch_0
    const/4 v0, 0x2

    return v0

    :sswitch_1
    const/4 v0, 0x4

    return v0

    :sswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getAudioUsageForStreamType(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    const/4 v0, 0x4

    return v0

    :sswitch_2
    const/4 v0, 0x3

    return v0

    :sswitch_3
    const/4 v0, 0x5

    return v0

    :sswitch_4
    const/4 v0, 0x6

    return v0

    :sswitch_5
    const/16 v0, 0xd

    return v0

    :sswitch_6
    const/4 v0, 0x2

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getBytesFromHexString(Ljava/lang/String;)[B
    .locals 5

    const/16 v4, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "(\\s*,\\s*)"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    :goto_0
    if-lt v1, v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_4

    :goto_1
    return-object v0

    :cond_0
    return-object v0

    :cond_1
    aget-object v5, v2, v1

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v6

    if-eq p1, v6, :cond_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gtz v6, :cond_3

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getDefaultBufferSize(I)I
    .locals 1

    const/high16 v0, 0x20000

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    const/high16 v0, 0x1000000

    return v0

    :pswitch_1
    const/high16 v0, 0x360000

    return v0

    :pswitch_2
    const/high16 v0, 0xc80000

    return v0

    :pswitch_3
    return v0

    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private static getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private static getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private static getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public static getDrmUuid(Ljava/lang/String;)Ljava/util/UUID;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v3, "widevine"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "playready"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "clearkey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6ee3d111 -> :sswitch_1
        -0x537ab703 -> :sswitch_0
        0x2f1b28f2 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getIntegerCodeForString(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x4

    if-le v2, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    move v0, v1

    :goto_1
    if-lt v1, v2, :cond_1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getMediaDurationForPlayoutDuration(JF)J
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-wide p0

    :cond_0
    long-to-double v0, p0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPcmEncoding(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x3

    return v0

    :sswitch_1
    const/4 v0, 0x2

    return v0

    :sswitch_2
    const/high16 v0, -0x80000000

    return v0

    :sswitch_3
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getPcmFrameSize(II)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    :sswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_1
    return p1

    :sswitch_2
    mul-int/lit8 v0, p1, 0x2

    return v0

    :sswitch_3
    mul-int/lit8 v0, p1, 0x3

    return v0

    :sswitch_4
    mul-int/lit8 v0, p1, 0x4

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_3
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_4
        0x40000000 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getPhysicalDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->getPhysicalDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getPhysicalDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .locals 6

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_a

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_b

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_c

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "Sony"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "philips"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "QM1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    :goto_2
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "get"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "sys.display-size"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    :cond_5
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid sys.display-size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Util"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "BRAVIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_7
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "SHIELD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_8
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "QV151E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "TPM171E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Util"

    const-string/jumbo v3, "Failed to read sys.display-size"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto/16 :goto_3

    :cond_9
    const/4 v2, 0x0

    :try_start_2
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v2, :cond_5

    if-lez v1, :cond_5

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v2, v1}, Landroid/graphics/Point;-><init>(II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    :cond_a
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_1

    :cond_b
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_1

    :cond_c
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_4
.end method

.method public static getPlayoutDurationForMediaDuration(JF)J
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-wide p0

    :cond_0
    long-to-double v0, p0

    float-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStreamTypeForAudioUsage(I)I
    .locals 1

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_4
    const/16 v0, 0x8

    return v0

    :pswitch_5
    const/4 v0, 0x4

    return v0

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;
    .locals 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    rem-long v2, v0, v2

    const-wide/16 v4, 0x3c

    div-long v4, v0, v4

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    const-wide/16 v6, 0xe10

    div-long v6, v0, v6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "%d:%02d:%02d"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "%02d:%02d"

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (Linux;Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ExoPlayerLib/2.8.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "?"

    goto :goto_0
.end method

.method public static getUtf8Bytes(Ljava/lang/String;)[B
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static inferContentType(Landroid/net/Uri;)I
    .locals 1

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static inferContentType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    goto :goto_0
.end method

.method public static inferContentType(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".mpd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ".*\\.ism(l)?(/manifest(\\(.+\\))?)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isEncodingHighResolutionIntegerPcm(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEncodingPcm(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLinebreak(I)Z
    .locals 1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalFileUri(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static varargs maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Landroid/net/Uri;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_2

    :cond_0
    return v1

    :cond_1
    return v1

    :cond_2
    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return v4
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/util/Util$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/Util$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1

    array-length v0, p0

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parseXsDateTime(Ljava/lang/String;)J
    .locals 11

    const/16 v2, 0x9

    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0xc

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xd

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v7, v0

    :goto_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    if-nez v7, :cond_5

    :goto_2
    return-wide v0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid date/time format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v7, v0

    goto :goto_0

    :cond_2
    move v7, v0

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, -0x1

    move v7, v0

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :cond_5
    const v2, 0xea60

    mul-int/2addr v2, v7

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_2
.end method

.method public static parseXsDuration(Ljava/lang/String;)J
    .locals 14

    const-wide v12, 0x40ac200000000000L    # 3600.0

    const-wide v10, 0x408f400000000000L    # 1000.0

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    mul-double/2addr v0, v12

    mul-double/2addr v0, v10

    double-to-long v0, v0

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-wide v2, v4

    :goto_1
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    move-wide v6, v4

    :goto_2
    add-double/2addr v6, v2

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move-wide v2, v4

    :goto_3
    add-double/2addr v6, v2

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move-wide v2, v4

    :goto_4
    add-double/2addr v6, v2

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move-wide v2, v4

    :goto_5
    add-double/2addr v2, v6

    const/16 v6, 0xe

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_6
    add-double/2addr v2, v4

    mul-double/2addr v2, v10

    double-to-long v2, v2

    if-nez v0, :cond_8

    move-wide v0, v2

    :goto_7
    return-wide v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v6, 0x417e1852c0000000L    # 3.1556908E7

    mul-double/2addr v2, v6

    goto :goto_1

    :cond_3
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x4144103580000000L    # 2629739.0

    mul-double/2addr v6, v8

    goto :goto_2

    :cond_4
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v8, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v2, v8

    goto :goto_3

    :cond_5
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v2, v12

    goto :goto_4

    :cond_6
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v8

    goto :goto_5

    :cond_7
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_6

    :cond_8
    neg-long v0, v2

    goto :goto_7
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static recursiveDelete(Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->recursiveDelete(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeRange(Ljava/util/List;II)V
    .locals 1

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static resolveSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;JJ)J
    .locals 9

    sget-object v0, Lcom/google/android/exoplayer2/SeekParameters;->EXACT:Lcom/google/android/exoplayer2/SeekParameters;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v2, p2, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    const-wide/high16 v4, -0x8000000000000000L

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->subtractWithOverflowDefault(JJJ)J

    move-result-wide v6

    iget-wide v2, p2, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    const-wide v4, 0x7fffffffffffffffL

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->addWithOverflowDefault(JJJ)J

    move-result-wide v2

    cmp-long v0, v6, p3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_4

    cmp-long v0, p3, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    cmp-long v1, v6, p5

    if-lez v1, :cond_5

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_7

    cmp-long v1, p5, v2

    if-lez v1, :cond_6

    const/4 v1, 0x1

    :goto_4
    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_5
    if-nez v0, :cond_8

    :cond_0
    if-nez v0, :cond_b

    if-nez v1, :cond_c

    return-wide v6

    :cond_1
    return-wide p0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_0

    sub-long v0, p3, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v2, p5, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_a

    return-wide p3

    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    return-wide p5

    :cond_b
    return-wide p3

    :cond_c
    return-wide p5
.end method

.method public static scaleLargeTimestamp(JJJ)J
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmp-long v2, p4, p2

    if-gez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    rem-long v2, p4, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    div-long v0, p4, p2

    div-long v0, p0, v0

    return-wide v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    cmp-long v2, p4, p2

    if-ltz v2, :cond_2

    :goto_1
    if-nez v0, :cond_3

    rem-long v0, p2, p4

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    div-long v0, p2, p4

    mul-long/2addr v0, p0

    return-wide v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    long-to-double v0, p2

    long-to-double v2, p4

    div-double/2addr v0, v2

    long-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static scaleLargeTimestamps(Ljava/util/List;JJ)[J
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [J

    cmp-long v2, p3, p1

    if-gez v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    rem-long v4, p3, p1

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    div-long v4, p3, p1

    move v1, v0

    :goto_1
    array-length v0, v3

    if-lt v1, v0, :cond_2

    :cond_0
    return-object v3

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    div-long/2addr v6, v4

    aput-wide v6, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    cmp-long v2, p3, p1

    if-ltz v2, :cond_4

    :goto_2
    if-nez v1, :cond_5

    rem-long v4, p1, p3

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    div-long v4, p1, p3

    move v1, v0

    :goto_3
    array-length v0, v3

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v6, v4

    aput-wide v6, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    long-to-double v4, p1

    long-to-double v6, p3

    div-double/2addr v4, v6

    move v1, v0

    :goto_4
    array-length v0, v3

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-long v6, v6

    aput-wide v6, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method public static scaleLargeTimestampsInPlace([JJJ)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    cmp-long v2, p3, p1

    if-gez v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    rem-long v2, p3, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    div-long v2, p3, p1

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_2

    :cond_0
    return-void

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    aget-wide v4, p0, v0

    div-long/2addr v4, v2

    aput-wide v4, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    cmp-long v2, p3, p1

    if-ltz v2, :cond_4

    :goto_2
    if-nez v1, :cond_5

    rem-long v2, p1, p3

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    div-long v2, p1, p3

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-wide v4, p0, v0

    mul-long/2addr v4, v2

    aput-wide v4, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    long-to-double v2, p1

    long-to-double v4, p3

    div-double/2addr v2, v4

    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-wide v4, p0, v0

    long-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-long v4, v4

    aput-wide v4, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static shouldEscapeCharacter(C)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5c -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method public static sneakyThrow(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrowInternal(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static sneakyThrowInternal(Ljava/lang/Throwable;)V
    .locals 0

    throw p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static subtractWithOverflowDefault(JJJ)J
    .locals 6

    sub-long v2, p0, p2

    xor-long v0, p0, p2

    xor-long v4, p0, v2

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-wide p4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static toArray(Ljava/util/List;)[I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    return-object v3

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 4

    const/16 v0, 0x1000

    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static unescapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    :goto_0
    if-lt v2, v3, :cond_1

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v0, 0x2

    sub-int v2, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_1
    if-gtz v1, :cond_4

    :cond_0
    if-lt v0, v3, :cond_5

    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-eq v4, v5, :cond_2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-object p0

    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v4, p0, v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v4, p0, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
