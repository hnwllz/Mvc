// Copyright (c) .NET Foundation. All rights reserved.
// Licensed under the Apache License, Version 2.0. See License.txt in the project root for license information.

using System;
using System.Linq;
using System.Threading.Tasks;
using BasicApi.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BasicApi.Controllers
{
    [Route("/pet")]
    public class PetController : ControllerBase
    {
        [HttpPost("add-pet")]
        public ActionResult<Pet> AddPetWithoutDb(byte[] content)
        {
            return Content(content.Length.ToString());
        }
    }
}
